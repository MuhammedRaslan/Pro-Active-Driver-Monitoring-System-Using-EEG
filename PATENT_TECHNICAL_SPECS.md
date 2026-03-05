# Technical Specifications - Proactive Headrest DMS

**Document:** Technical Specifications  
**Version:** 1.0  
**Date:** March 5, 2026  
**Status:** Draft

---

## 1. System Overview

### 1.1 Purpose
A proactive driver monitoring system that predicts drowsiness 5-10 minutes before it occurs, using EEG sensors embedded in the vehicle headrest.

### 1.2 Key Components
1. **Hardware:** EEG sensors (O1/O2 placement) in headrest
2. **Signal Processing:** Real-time feature extraction
3. **Prediction Engine:** Temporal trend analysis algorithm
4. **Alert System:** Multi-tier warnings (visual/audio/haptic)
5. **User Interface:** Dashboard display with status/warnings

---

## 2. Hardware Specifications

### 2.1 EEG Sensors
- **Type:** Dry EEG electrodes (contact-based)
- **Material:** Silicone-textured conductive fabric
- **Placement:** O1 and O2 positions (occipital region)
  - O1: Left occipital (20% left of Cz-Oz line)
  - O2: Right occipital (20% right of Cz-Oz line)
- **Contact Area:** 10mm diameter circular electrodes
- **Impedance:** < 50kΩ (optimal), < 100kΩ (acceptable)

### 2.2 Headrest Integration
- **Design:** Embedded sensors in contact zones
- **Positioning:** Occipital region where head naturally rests
- **Adjustability:** Vertical ±5cm to accommodate different head sizes
- **Comfort:** Silicone texture provides comfortable contact
- **Safety:** Non-invasive, no skin preparation required

### 2.3 Signal Acquisition
- **Channels:** 2 (O1, O2) + 1 reference (ground)
- **Sampling Rate:** 128 Hz (minimum), 256 Hz (optimal)
- **Resolution:** 16-bit ADC minimum, 24-bit preferred
- **Bandwidth:** 0.1 - 40 Hz
- **Amplifier Gain:** 10,000x - 100,000x (adjustable)
- **Input Impedance:** > 10 MΩ

### 2.4 Processing Unit
- **Type:** Embedded microcontroller or SoC
- **CPU:** ARM Cortex-M4 or higher
- **Memory:** 
  - RAM: 128 KB minimum (for buffering)
  - Flash: 512 KB minimum (for firmware)
- **DSP:** Hardware floating-point unit (FPU) recommended
- **Connectivity:** CAN bus (vehicle integration) + Bluetooth (optional)

### 2.5 Power Requirements
- **Voltage:** 12V DC (vehicle power)
- **Current:** < 500 mA typical, < 1A peak
- **Power Consumption:** < 6W typical
- **Standby Mode:** < 100 mW (when vehicle off)

---

## 3. Signal Processing Pipeline

### 3.1 Preprocessing
```
Raw Signal (128 Hz)
    ↓
Band-pass Filter (1-40 Hz) → Remove DC offset & high-freq noise
    ↓
Artifact Detection → Reject motion/blink artifacts
    ↓
Resampling (optional) → Normalize to 128 Hz
    ↓
Clean Signal → Ready for feature extraction
```

### 3.2 Feature Extraction

#### Real-Time Sliding Window
- **Window Size:** 60 seconds
- **Step Size:** 30 seconds (50% overlap)
- **Update Frequency:** Every 30 seconds

#### Computed Features (per window)
1. **Theta Power (4-8 Hz):**
   - Method: Welch's PSD (256-sample segments, 50% overlap)
   - Output: Mean power in theta band (μV²)

2. **Alpha Power (8-13 Hz):**
   - Method: Welch's PSD
   - Output: Mean power in alpha band (μV²)

3. **Theta/Alpha Ratio:**
   - Formula: `ratio = theta_power / alpha_power`
   - Output: Dimensionless ratio

4. **Beta Power (13-30 Hz):** (Optional enhancement)
   - Method: Welch's PSD
   - Output: Mean power in beta band (μV²)

#### Feature Vector (per window)
- O1_theta, O1_alpha, O1_ratio
- O2_theta, O2_alpha, O2_ratio
- **Total:** 6 features (or 8 with beta)

### 3.3 Temporal Trend Analysis

#### Rolling History
- **Buffer:** Last 10 windows (5 minutes of data)
- **Storage:** Circular buffer in RAM

#### Slope Calculation
```python
# Linear regression on last 5 minutes
slope_theta = linregress(time_points, theta_power).slope
slope_alpha = linregress(time_points, alpha_power).slope
slope_ratio = linregress(time_points, theta_alpha_ratio).slope
```

#### Prediction Logic
```python
# Estimate time to drowsiness threshold
if slope_ratio > 0:
    time_to_threshold = (DROWSY_THRESHOLD - current_ratio) / slope_ratio
    
    if time_to_threshold <= 10 minutes:
        trigger_yellow_warning()
    
    if time_to_threshold <= 5 minutes:
        trigger_red_alert()
```

---

## 4. Prediction Algorithm

### 4.1 Baseline Calibration
- **Duration:** First 5 minutes of driving
- **Requirement:** Driver must be alert/awake
- **Computation:** Mean and std of theta, alpha, ratio
- **Storage:** Personal baseline thresholds

### 4.2 Detection Thresholds

| Parameter | Baseline | Yellow Warning | Red Alert |
|-----------|----------|----------------|-----------|
| **Theta Power** | Mean ± 1σ | Mean + 2σ | Mean + 3σ |
| **Alpha Power** | Mean ± 1σ | Mean + 2σ | Mean + 3σ |
| **Theta/Alpha Ratio** | Mean ± 1σ | Mean + 1.5σ | Mean + 2σ |

### 4.3 Classification Model

#### Option 1: Random Forest (Validated)
- **Features:** 4 (theta_O1, alpha_O1, theta_O2, alpha_O2)
- **Trees:** 100
- **Max Depth:** Auto
- **Class Balance:** Balanced weights
- **Accuracy:** 89.54% (from Phase B validation)
- **Inference Time:** < 50 ms

#### Option 2: Threshold-Based (Simpler)
- **Logic:** If (theta > threshold) OR (alpha > threshold) OR (ratio > threshold)
- **Advantage:** No ML model needed, faster, explainable
- **Disadvantage:** Lower accuracy (~80-85%)

### 4.4 Prediction Horizon
- **Short-term (1-3 min):** Immediate state classification
- **Medium-term (5 min):** Red alert window
- **Long-term (10 min):** Yellow warning window

---

## 5. Alert System

### 5.1 Warning Levels

#### 🟢 Normal State
- **Condition:** All biomarkers within baseline range
- **Display:** Green indicator on dashboard
- **Action:** None

#### 🟡 Yellow Warning (10-Minute Ahead)
- **Condition:** 
  - Positive slope in theta/alpha
  - Predicted drowsiness in 10-15 minutes
- **Display:** Yellow indicator + text warning
- **Audio:** Gentle chime (once)
- **Message:** "Drowsiness detected in ~10 minutes. Consider rest."
- **Action:** Driver informed, no immediate action required

#### 🔴 Red Alert (5-Minute Ahead)
- **Condition:**
  - Strong positive slope
  - Predicted drowsiness in 5-10 minutes
- **Display:** Red indicator + flashing text
- **Audio:** Urgent beep (repeating every 30s)
- **Haptic:** Seat vibration (if available)
- **Message:** "DROWSINESS IMMINENT in ~5 minutes. Pull over NOW."
- **Action:** Driver must take action

#### ⛔ Critical State (Current Drowsiness)
- **Condition:** Biomarkers exceed drowsy threshold
- **Display:** Red flashing + warning icon
- **Audio:** Loud alarm (continuous)
- **Haptic:** Strong seat vibration
- **Message:** "DROWSY STATE DETECTED. STOP IMMEDIATELY."
- **Action:** Emergency alert, suggestion to activate driver assistance

### 5.2 Alert Suppression
- **Cooldown:** 2 minutes after alert dismissal
- **Manual Override:** Driver can snooze yellow warnings (not red/critical)
- **Reset:** After 10 minutes of normal biomarkers

---

## 6. Performance Metrics (From Validation)

### 6.1 Detection Accuracy
- **Full-cap Baseline:** 91.32% (4 channels: C3, C4, O1, O2)
- **Headrest Configuration:** 89.54% (2 channels: O1, O2)
- **Accuracy Drop:** 1.95% (< 5% threshold = Excellent)

### 6.2 Classification Performance
- **Precision (Drowsy):** ~75%
- **Recall (Drowsy):** ~70%
- **F1-Score (Drowsy):** 0.72
- **False Positive Rate:** < 10%

### 6.3 Computational Requirements
- **Feature Extraction:** ~20 ms per window
- **Classification:** < 50 ms
- **Total Latency:** < 100 ms (real-time capable)
- **Memory Footprint:** < 128 KB RAM

### 6.4 Prediction Performance (Estimated)
- **Prediction Horizon:** 5-10 minutes
- **Prediction Accuracy:** 70-80% (based on trend analysis)
- **False Alarm Rate:** 10-20% (acceptable for safety application)

---

## 7. System Integration

### 7.1 Vehicle Integration Points
- **Power:** 12V accessory line (switched with ignition)
- **Ground:** Chassis ground
- **Data:** CAN bus (J1939 or OBD-II)
- **Display:** Instrument cluster or infotainment system
- **Audio:** Vehicle speaker system

### 7.2 Data Exchange
- **Vehicle → DMS:**
  - Speed, gear position
  - Time of day
  - Trip duration
- **DMS → Vehicle:**
  - Drowsiness level (0-100%)
  - Alert status (Normal/Yellow/Red/Critical)
  - Timestamp of last alert

### 7.3 Safety Features
- **Fail-Safe:** System enters safe mode if sensor disconnection detected
- **Self-Test:** Electrode impedance check at startup
- **Redundancy:** Dual sensors (O1, O2) for cross-validation
- **Override:** Driver can disable (not recommended)

---

## 8. Compliance and Standards

### 8.1 Medical Device Classification
- **FDA:** Class II medical device (if marketed for medical use)
- **EU:** CE marking required
- **Alternative:** Consumer wellness device (not medical)

### 8.2 Automotive Standards
- **ISO 26262:** Functional safety (ASIL B recommended)
- **SAE J3016:** Driver monitoring system standards
- **UNECE R157:** Automated lane keeping systems (relevant for integration)

### 8.3 EMC/EMI
- **Automotive EMC:** CISPR 25 compliance
- **Immunity:** ISO 11452 (vehicle electrical disturbances)

### 8.4 Data Privacy
- **GDPR:** If deployed in EU (biometric data protection)
- **CCPA:** If deployed in California
- **Data Retention:** Minimal (last 1 hour only)
- **Anonymization:** No PII stored

---

## 9. Limitations and Future Enhancements

### 9.1 Current Limitations
- Binary labels in validation data (awake vs drowsy sessions)
- No precise drowsiness onset timestamps
- Single-subject validation for Phase C
- Simulated prediction (not real-time validated)

### 9.2 Recommended Enhancements
1. **Multi-Subject Validation:** Test on 50+ drivers
2. **Longitudinal Study:** Track same drivers over weeks
3. **Driving Simulator:** Validate with realistic driving tasks
4. **Beta Frequency:** Add beta (13-30 Hz) features
5. **Delta Frequency:** Add delta (0.5-4 Hz) for deep drowsiness
6. **Machine Learning:** LSTM/GRU for temporal sequence learning
7. **Adaptive Thresholds:** Personalized learning over time
8. **Multi-Modal:** Combine with eye tracking, heart rate

### 9.3 Patent Protection Strategy
- **Current Claims:** Cover core method and basic implementation
- **Future Claims:** Add dependent claims for enhancements
- **Continuation:** File continuation patents for new features

---

## 10. Reference Data (From Validation)

### 10.1 Dataset Statistics
- **Total Epochs:** 43,974 (10-second windows)
- **Awake Epochs:** 36,644 (83%)
- **Drowsy Epochs:** 7,330 (17%)
- **Sampling Rate:** 128 Hz
- **Channels Used:** C3, C4, O1, O2

### 10.2 Feature Statistics (O1 Channel, Mean ± Std)
- **Theta Power (Awake):** (to be filled from actual data)
- **Theta Power (Drowsy):** (to be filled from actual data)
- **Alpha Power (Awake):** (to be filled from actual data)
- **Alpha Power (Drowsy):** (to be filled from actual data)

---

**Status:** Technical specifications documented. Ready for prior art analysis and claims drafting.

**Next Document:** PATENT_PRIOR_ART.md
