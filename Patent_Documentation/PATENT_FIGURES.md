# Patent Figures and Drawings - Proactive Headrest-Based EEG DMS

**Document:** Patent Figures Specification  
**Version:** 1.0  
**Date:** March 5, 2026  
**Filing Jurisdiction:** India (Indian Patent Office)  
**Total Figures Required:** 8

---

## Indian Patent Office Drawing Requirements

### Technical Standards for Patent Drawings

**General Requirements (Patent Rules 2003, Rule 15):**
- **Paper Size:** A4 (210 mm × 297 mm)
- **Margins:** Left: 2.5 cm, Top: 2.5 cm, Right: 1.5 cm, Bottom: 1.0 cm
- **Orientation:** Portrait preferred, Landscape allowed if necessary
- **Line Quality:** Black ink, uniform thickness, durable, clean
- **Shading:** Cross-hatching permitted for clarity
- **Scale:** Adequate to show all features clearly
- **Reference Numbers:** Must match specification text

**Drawing Types Allowed:**
- Block diagrams (system architecture)
- Flowcharts (algorithms, processes)
- Schematic diagrams (circuit designs)
- Technical illustrations (mechanical designs)
- Graphs and charts (experimental results)
- Perspective views (3D representations)

**Labeling Requirements:**
- Brief identifying expressions (e.g., "Fig. 1", "Fig. 2A", "Fig. 2B")
- Reference numerals consistent with description
- Arrows indicating direction of flow/movement
- Legends for symbols and abbreviations

**Prohibited Elements:**
- Color drawings (unless absolutely necessary, then provide B&W alternative)
- Photographs (unless no other form is practical)
- Trade names or advertising material
- Irrelevant subject matter

---

## Figure 1: System Block Diagram

### Purpose
Illustrate overall system architecture from sensors to alerts, showing data flow and processing modules.

### Components to Include

**Input Layer (Left Side):**
1. **Driver's Head** (simple outline showing occipital region)
2. **Headrest Assembly** with embedded electrodes
3. **O1 Electrode** (left occipital) - labeled
4. **O2 Electrode** (right occipital) - labeled
5. **Reference Electrode** (Cz or earlobe) - labeled
6. **Ground Electrode** - labeled

**Signal Acquisition Layer:**
7. **Pre-amplifier Module** (impedance buffering)
8. **Amplifier** (gain: 10,000-100,000x) - labeled with gain value
9. **Bandpass Filter** (1-40 Hz) - labeled with frequency range
10. **ADC (Analog-to-Digital Converter)** - labeled with specs (16-24 bit, 128-256 Hz)

**Processing Layer (Central):**
11. **Microcontroller/DSP** (ARM Cortex-M4 or equivalent)
12. **Signal Processing Module:**
    - Artifact Detection & Rejection
    - Spectral Analysis (Welch's PSD)
13. **Feature Extraction Module:**
    - Theta Power (4-8 Hz)
    - Alpha Power (8-13 Hz)
    - Theta/Alpha Ratio
14. **Temporal Analysis Module:**
    - Rolling Buffer (5-min history)
    - Linear Regression (trend slopes)
15. **Prediction Module:**
    - Time-to-Drowsiness Calculation
    - Threshold Comparison

**Output Layer (Right Side):**
16. **Alert Generation Module:**
    - Normal State (Green)
    - Yellow Warning (10 min)
    - Red Alert (5 min)
    - Critical State (Current drowsiness)
17. **Vehicle Integration:**
    - Dashboard Display
    - Audio System (speakers)
    - Haptic Feedback (seat vibration)
    - CAN Bus Interface

**Data Flow:**
- Use **arrows** to show signal flow from left to right
- Use **dashed lines** for control signals
- Use **solid lines** for data signals
- Use **bold lines** for critical alert paths

### Labels (Reference Numerals)
- 100: Driver's head/occipital region
- 110: Headrest assembly
- 111: O1 electrode
- 112: O2 electrode
- 113: Reference electrode
- 114: Ground electrode
- 120: Signal acquisition module
- 121: Pre-amplifier
- 122: Main amplifier
- 123: Bandpass filter
- 124: ADC
- 130: Processing unit (microcontroller)
- 140: Signal processing module
- 141: Artifact rejection sub-module
- 142: Spectral analysis sub-module
- 150: Feature extraction module
- 151: Theta power calculator
- 152: Alpha power calculator
- 153: Ratio calculator
- 160: Temporal analysis module
- 161: Rolling buffer
- 162: Regression engine
- 170: Prediction module
- 171: Time-to-drowsiness calculator
- 172: Threshold comparator
- 180: Alert generation module
- 181: Normal state indicator
- 182: Yellow warning generator
- 183: Red alert generator
- 184: Critical alert generator
- 190: Vehicle interface
- 191: Dashboard display
- 192: Audio system
- 193: Haptic feedback
- 194: CAN bus interface

### Drawing Notes
- **Size:** Full A4 page
- **Orientation:** Landscape
- **Style:** Professional block diagram with clear boxes and connecting lines
- **Title:** "FIG. 1 - System Block Diagram of Proactive Drowsiness Detection System"

---

## Figure 2: Headrest Sensor Placement (Anatomical View)

### Purpose
Show precise electrode placement on driver's head in relation to headrest contact zones.

### Views Required

**Figure 2A: Rear View (Primary)**
1. **Driver's Head** (outline from behind)
2. **Skull Features:**
   - Inion (occipital protuberance) - anatomical landmark
   - Nasion (bridge of nose) - reference point
3. **Electrode Positions:**
   - **O1 Position** (left occipital, 10% left of midline)
   - **O2 Position** (right occipital, 10% right of midline)
   - Measurements from inion (4-6 cm above)
4. **International 10-20 System Grid:**
   - Show Cz (vertex) for reference
   - Show T3/T4 (temporal) for reference
   - Highlight O1/O2 positions
5. **Headrest Contact Zone** (shaded area showing natural contact region)
6. **Dimensions:**
   - Distance between O1-O2 (typically 4-6 cm)
   - Height from neck line
   - Horizontal alignment

**Figure 2B: Side View (Profile)**
1. **Driver's Head Profile** (left side view)
2. **Headrest Position** relative to head
3. **O1 Electrode Contact Point** (cross-section view)
4. **Angle of Contact** (approximately perpendicular to skull)
5. **Electrode Depth in Headrest** (embedded 2-3 mm from surface)
6. **Adjustable Range** (vertical ±5 cm for different head sizes)

**Figure 2C: Electrode Detail (Inset/Magnified View)**
1. **Electrode Structure:**
   - Conductive fabric layer (outer surface)
   - Silicone texture (comfort layer)
   - Conductive core (silver-coated)
   - Wire connection
2. **Dimensions:**
   - Diameter: 10 mm
   - Thickness: 2-3 mm
   - Contact pressure: gentle (passive contact)
3. **Cross-section** showing layers

### Labels (Reference Numerals)
- 200: Driver's head (rear view)
- 201: Inion (occipital protuberance)
- 202: Nasion (reference point)
- 210: O1 electrode position
- 211: O2 electrode position
- 212: O1-O2 distance dimension line
- 220: Headrest assembly (rear view)
- 221: Headrest contact zone (shaded)
- 222: Headrest padding
- 230: International 10-20 grid overlay
- 231: Cz (vertex) reference
- 232: T3/T4 (temporal) reference
- 240: Driver's head (profile view)
- 241: O1 electrode (profile)
- 242: Headrest (profile)
- 243: Electrode contact angle
- 244: Adjustable range (vertical arrows)
- 250: Electrode detail (magnified)
- 251: Conductive fabric layer
- 252: Silicone texture layer
- 253: Conductive core
- 254: Wire connection
- 255: Electrode diameter dimension

### Drawing Notes
- **Size:** Full A4 page divided into 3 panels (2A, 2B, 2C)
- **Orientation:** Portrait
- **Style:** Technical anatomical illustration with clear dimensions
- **Title:** "FIG. 2 - Electrode Placement: (A) Rear View, (B) Side Profile, (C) Electrode Detail"

---

## Figure 3: Signal Processing Flowchart

### Purpose
Detailed flowchart showing step-by-step signal processing from raw EEG to drowsiness prediction.

### Flowchart Structure (Top to Bottom)

**START**

**Block 1: Signal Acquisition**
- Input: Raw EEG signals (O1, O2)
- Sampling: 128 Hz
- Duration: Continuous
- ↓

**Block 2: Quality Check**
- Check electrode impedance
- Decision Diamond: "Impedance < 100 kΩ?"
  - NO → Display "Poor Contact Warning" → Return to Block 1
  - YES → Continue
- ↓

**Block 3: Preprocessing**
- Apply bandpass filter (1-40 Hz)
- Remove DC offset
- Notch filter (50/60 Hz power line noise)
- ↓

**Block 4: Artifact Detection**
- Check signal amplitude
- Decision Diamond: "Amplitude > 100 μV?"
  - YES → Mark as artifact, discard segment → Return to Block 1
  - NO → Continue
- Check gradient (motion artifacts)
- Decision Diamond: "Gradient excessive?"
  - YES → Mark as artifact, discard segment → Return to Block 1
  - NO → Continue
- ↓

**Block 5: Segmentation**
- Extract sliding window (60 seconds)
- Step interval: 30 seconds
- ↓

**Block 6: Spectral Analysis**
- Apply Welch's PSD method
- Segment size: 256 samples
- Overlap: 50%
- Output: Power spectrum (0.5-40 Hz)
- ↓

**Block 7: Feature Extraction**
- Calculate Theta Power (4-8 Hz): Integrate PSD in theta band
- Calculate Alpha Power (8-13 Hz): Integrate PSD in alpha band
- Calculate Theta/Alpha Ratio
- Output: Feature vector [theta_O1, alpha_O1, ratio_O1, theta_O2, alpha_O2, ratio_O2]
- ↓

**Block 8: Calibration Check**
- Decision Diamond: "Calibration complete?"
  - NO → Store in baseline buffer (first 5 minutes) → Return to Block 5
  - YES → Continue
- Calculate baseline thresholds: Mean ± 2σ
- ↓

**Block 9: Temporal History Update**
- Add current features to rolling buffer (5-min history)
- Decision Diamond: "Buffer full (10 time points)?"
  - NO → Return to Block 5 (wait for more data)
  - YES → Continue
- ↓

**Block 10: Temporal Trend Analysis**
- Extract time series from buffer
- Apply linear regression on:
  - Theta power trend
  - Alpha power trend
  - Theta/alpha ratio trend
- Calculate slopes: dTheta/dt, dAlpha/dt, dRatio/dt
- ↓

**Block 11: Prediction Calculation**
- For each feature (theta, alpha, ratio):
  - time_to_threshold = (threshold - current_value) / slope
- Select minimum time (most imminent drowsiness indicator)
- ↓

**Block 12: Alert Decision**
- Decision Diamond: "Current value > threshold?"
  - YES → Generate CRITICAL ALERT (Red, continuous alarm) → Output to Vehicle
  - NO → Continue
- Decision Diamond: "Predicted time < 5 min?"
  - YES → Generate RED ALERT (Urgent warning) → Output to Vehicle
  - NO → Continue
- Decision Diamond: "Predicted time < 10 min?"
  - YES → Generate YELLOW WARNING (Early warning) → Output to Vehicle
  - NO → Continue
- NORMAL STATE → Display green indicator
- ↓

**Block 13: Output to Vehicle**
- Send alert status to CAN bus
- Update dashboard display
- Trigger audio/haptic feedback (if alert active)
- ↓

**Return to Block 1** (Continuous loop)

**END** (only on system shutdown)

### Labels (Reference Numerals)
- 300: Signal acquisition block
- 310: Quality check decision
- 320: Preprocessing block
- 330: Artifact detection decisions
- 340: Segmentation block
- 350: Spectral analysis block
- 360: Feature extraction block
- 370: Calibration check decision
- 380: Temporal history update
- 390: Trend analysis block
- 400: Prediction calculation block
- 410: Alert decision logic
- 420: Output to vehicle block

### Drawing Notes
- **Size:** Full A4 page (may extend to 2 pages if necessary)
- **Orientation:** Portrait
- **Style:** Standard flowchart with rectangles (processes), diamonds (decisions), arrows (flow)
- **Title:** "FIG. 3 - Signal Processing and Prediction Algorithm Flowchart"

---

## Figure 4: Temporal Trend Analysis Illustration

### Purpose
Visualize how theta/alpha power increases gradually over time in drowsy state, enabling proactive prediction.

### Graph Structure

**Main Graph (Time Series Plot):**
- **X-axis:** Time (minutes) - Range: 0 to 15 minutes
- **Y-axis:** Normalized Power (arbitrary units) - Range: 0.5 to 2.5
- **Baseline:** Horizontal dashed line at y = 1.0 (normalized baseline)
- **Threshold:** Horizontal dashed line at y = 2.0 (drowsiness threshold, +2σ)

**Three Curves:**

**Curve 1: Theta Power (Solid Blue Line)**
1. **Baseline Phase (0-5 min):** Relatively flat around y = 1.0 (calibration period)
2. **Trend Phase (5-15 min):** Gradual upward trend
   - Slope labeled: "dTheta/dt = +0.15 per min" (positive slope)
   - At t = 10 min: y = 1.5
   - At t = 15 min: y = 2.0 (crosses threshold)
3. Annotate with small circles at 30-second intervals (data points)

**Curve 2: Alpha Power (Solid Green Line)**
1. **Baseline Phase (0-5 min):** Flat around y = 0.9
2. **Trend Phase (5-15 min):** Upward trend (similar slope to theta)
   - Slope labeled: "dAlpha/dt = +0.12 per min"
   - At t = 10 min: y = 1.4
   - At t = 15 min: y = 1.9
3. Annotate with small squares at 30-second intervals

**Curve 3: Theta/Alpha Ratio (Dashed Red Line)**
1. **Baseline Phase (0-5 min):** Flat around y = 1.0
2. **Trend Phase (5-15 min):** Slight upward trend
   - Slope labeled: "dRatio/dt = +0.08 per min"
   - At t = 10 min: y = 1.3
   - At t = 15 min: y = 1.7

**Prediction Annotations:**

**Annotation 1: Current Time Marker (t = 5 min)**
- Vertical dashed line at t = 5 min
- Label: "Current Time (t₀)"
- Arrow pointing to current values

**Annotation 2: Extrapolation Lines**
- From t = 5 min, extend **dotted lines** showing linear extrapolation
- Dotted blue line (theta extrapolation) intersects threshold at t = 13 min
- Dotted green line (alpha extrapolation) intersects threshold at t = 14 min
- Label: "Linear Extrapolation"

**Annotation 3: Yellow Warning Zone**
- Vertical band from t = 5 min to t = 5 min (future time - 10 min ahead)
- Light yellow shading
- Label: "Yellow Warning Zone (10 min ahead)"
- Arrow pointing to t = 15 min with text "Predicted drowsiness onset"

**Annotation 4: Red Alert Zone**
- Vertical band from t = 10 min to t = 15 min
- Light red shading
- Label: "Red Alert Zone (5 min ahead)"

**Annotation 5: Prediction Formula Box**
- Inset box in top-right corner showing:
```
Time to Threshold:
t_predict = (Threshold - Value_current) / Slope

Example (Theta):
t_predict = (2.0 - 1.0) / 0.15
         = 6.7 minutes

Alert: 6.7 < 10 min → Yellow Warning
```

**Legend (Bottom Right):**
- Blue solid line with circle: Theta Power (4-8 Hz)
- Green solid line with square: Alpha Power (8-13 Hz)
- Red dashed line: Theta/Alpha Ratio
- Horizontal dashed line: Drowsiness Threshold (+2σ)
- Yellow shading: Yellow Warning Zone (10 min)
- Red shading: Red Alert Zone (5 min)

### Labels (Reference Numerals)
- 450: Time axis
- 451: Power axis
- 452: Baseline reference line
- 453: Threshold line
- 460: Theta power curve
- 461: Theta trend slope annotation
- 462: Theta data points
- 470: Alpha power curve
- 471: Alpha trend slope annotation
- 472: Alpha data points
- 480: Theta/alpha ratio curve
- 481: Ratio trend slope annotation
- 490: Current time marker
- 491: Extrapolation lines
- 492: Yellow warning zone
- 493: Red alert zone
- 494: Prediction formula box
- 495: Legend

### Drawing Notes
- **Size:** Full A4 page
- **Orientation:** Landscape
- **Style:** Professional scientific graph with clear axes, gridlines, and annotations
- **Title:** "FIG. 4 - Temporal Trend Analysis and Proactive Prediction Illustration"

---

## Figure 5: Alert System State Diagram

### Purpose
Show state machine logic for alert progression from normal to critical drowsiness.

### State Machine Structure

**State 1: NORMAL (Green Circle)**
- Label: "NORMAL STATE"
- Description box:
  - All biomarkers within baseline range
  - Predicted time > 10 minutes
  - Visual: Green indicator
  - Audio: None
  - Action: Monitor continuously

**Transition 1→2: (Arrow from NORMAL to YELLOW)**
- Condition label: "Predicted time ≤ 10 min"
- Trigger: Temporal trend extrapolation indicates drowsiness in 8-12 minutes
- ↓

**State 2: YELLOW WARNING (Yellow Diamond)**
- Label: "YELLOW WARNING"
- Description box:
  - Positive trend slopes detected
  - Predicted drowsiness in 8-12 minutes
  - Visual: Yellow indicator + text "Drowsiness in ~10 min"
  - Audio: Gentle chime (once)
  - Action: Suggest rest, display nearby rest stops

**Transition 2→3: (Arrow from YELLOW to RED)**
- Condition label: "Predicted time ≤ 5 min"
- Trigger: Acceleration of drowsiness trend, imminent threshold crossing
- ↓

**State 3: RED ALERT (Red Octagon)**
- Label: "RED ALERT"
- Description box:
  - Strong trend slopes confirmed
  - Predicted drowsiness in 3-7 minutes
  - Visual: Red flashing indicator + urgent text "PULL OVER NOW"
  - Audio: Urgent beep (repeating every 30 sec)
  - Haptic: Seat vibration (if available)
  - Action: Urgent intervention required

**Transition 3→4: (Arrow from RED to CRITICAL)**
- Condition label: "Current value > Threshold"
- Trigger: Biomarkers exceed drowsiness threshold, drowsiness detected NOW
- ↓

**State 4: CRITICAL (Red Rectangle with Bold Border)**
- Label: "CRITICAL DROWSINESS DETECTED"
- Description box:
  - Theta, alpha, or ratio exceeds threshold
  - Current drowsiness state confirmed
  - Visual: Red flashing + "DROWSY - STOP IMMEDIATELY"
  - Audio: Loud alarm (continuous)
  - Haptic: Strong seat vibration (continuous)
  - Vehicle: Suggest activating ADAS, emergency braking assistance
  - Action: Emergency intervention

**Reverse Transitions (Recovery):**

**Transition 4→3: (Dashed arrow from CRITICAL to RED)**
- Condition: "Biomarkers return below threshold"
- Label: "Drowsiness mitigates (driver intervention)"
- ↓

**Transition 3→2: (Dashed arrow from RED to YELLOW)**
- Condition: "Predicted time > 5 min (slope decreases)"
- Label: "Trend improvement"
- ↓

**Transition 2→1: (Dashed arrow from YELLOW to NORMAL)**
- Condition: "Predicted time > 10 min OR trend becomes negative"
- Label: "Return to baseline"
- ↓

**Transition 1→1: (Self-loop arrow on NORMAL)**
- Condition: "All biomarkers normal"
- Label: "Continue monitoring"

**Override Path: (Any State → NORMAL)**
- **Manual Override:** Dotted arrow from all states to NORMAL
- Condition: "Driver manual snooze (yellow/red only) OR system reset"
- Label: "Manual override (2-min cooldown)"

**System Error State: (Separate state to bottom)**
- **ERROR STATE** (Gray hexagon)
- Triggers:
  - Electrode impedance > 100 kΩ
  - Sensor disconnection
  - System malfunction
- Action: Display "System Error - Check Headrest Contact"
- Audio: Warning beep
- Return: When error condition resolved

### Labels (Reference Numerals)
- 500: Normal state (green circle)
- 501: Normal state description
- 502: Normal state indicators
- 510: Yellow warning state (yellow diamond)
- 511: Yellow warning description
- 512: Yellow warning indicators
- 520: Red alert state (red octagon)
- 521: Red alert description
- 522: Red alert indicators
- 530: Critical state (red rectangle)
- 531: Critical description
- 532: Critical indicators
- 540: Transition 1→2 (normal to yellow)
- 541: Transition 2→3 (yellow to red)
- 542: Transition 3→4 (red to critical)
- 550: Reverse transition 4→3
- 551: Reverse transition 3→2
- 552: Reverse transition 2→1
- 560: Manual override path
- 570: Error state (gray hexagon)
- 571: Error conditions
- 572: Error recovery path

### Drawing Notes
- **Size:** Full A4 page
- **Orientation:** Portrait
- **Style:** State machine diagram with distinct shapes for each state, labeled transitions with conditions
- **Color Coding:** Use shading/patterns to indicate state severity (light for normal, dark for critical)
- **Title:** "FIG. 5 - Alert System State Machine Diagram"

---

## Figure 6: Vehicle Integration Architecture

### Purpose
Show how the drowsiness detection system integrates with existing vehicle electronics and user interfaces.

### Architecture Diagram

**Layer 1: Drowsiness Detection System (Top - Your Patent)**
- **Headrest Module** (bold box):
  - O1/O2 Electrodes
  - Signal Acquisition
  - Pre-amplifier
  - Connected via cable harness
- **Processing Unit** (bold box):
  - Microcontroller (ARM Cortex-M4)
  - Signal Processing
  - Temporal Analysis
  - Prediction Engine
  - Alert Generation
- **Power Supply** (box):
  - 12V DC input from vehicle
  - Voltage regulation (5V, 3.3V)
  - Standby mode support

**Layer 2: Vehicle Communication Bus (Middle)**
- **CAN Bus Backbone** (horizontal thick line spanning page width)
  - Label: "CAN Bus (ISO 11898)"
  - Bitrate: 250-500 kbps
  - Nodes connected via vertical lines (stubs)

**Layer 3: Vehicle Systems (Bottom - Existing Infrastructure)**

**System 1: Instrument Cluster (Left)**
- Dashboard display
- Receives: Alert status, drowsiness level (0-100%)
- Displays: 
  - Green/Yellow/Red indicator
  - Text warnings
  - Drowsiness gauge
- Connection: CAN bus stub

**System 2: Infotainment System (Center-Left)**
- Head unit display
- Receives: Alert messages, rest stop suggestions
- Displays:
  - Detailed warnings
  - Navigation to nearby rest areas
  - Historical drowsiness logs
- Connection: CAN bus stub

**System 3: Audio System (Center)**
- Vehicle speakers
- Receives: Alert level (normal/yellow/red/critical)
- Outputs:
  - Gentle chime (yellow)
  - Urgent beep (red)
  - Loud alarm (critical)
- Connection: CAN bus stub

**System 4: Haptic Feedback (Center-Right)**
- Seat vibration motors
- Receives: Alert level
- Outputs:
  - Gentle vibration (red)
  - Strong vibration (critical)
- Connection: CAN bus stub

**System 5: ADAS Controller (Right)**
- Advanced Driver Assistance System
- Receives: Critical drowsiness alert
- Actions:
  - Activate lane-keeping assist
  - Increase following distance (ACC)
  - Prepare emergency braking
  - Suggest pull-over maneuver
- Connection: CAN bus stub

**Layer 4: Optional Connectivity (Bottom)**

**Optional Module 1: Bluetooth**
- Wireless connection to smartphone
- Transmits: Drowsiness events, timestamps
- Use: Personal health tracking, fleet management

**Optional Module 2: 4G/5G Modem**
- Cellular connectivity
- Transmits: Real-time alerts to cloud
- Use: Fleet management, remote monitoring, emergency services

**Optional Module 3: OBD-II Port**
- Aftermarket installation option
- Receives: Power (12V)
- Transmits: Alert data to CAN bus via OBD-II injector

**Data Flow Arrows:**
- **Solid arrows:** Required connections (CAN bus)
- **Dashed arrows:** Optional connections (Bluetooth, cellular)
- **Bidirectional arrows:** Two-way communication
- **Unidirectional arrows:** One-way alerts

**Isolation Components:**
- **CAN Transceiver** (between processing unit and CAN bus)
  - Galvanic isolation
  - ESD protection
  - Bus arbitration

### Labels (Reference Numerals)
- 600: Headrest module
- 601: O1/O2 electrodes
- 602: Signal acquisition
- 603: Cable harness
- 610: Processing unit
- 611: Microcontroller
- 612: Signal processing
- 613: Prediction engine
- 614: Alert generation
- 620: Power supply module
- 621: 12V input
- 622: Voltage regulator
- 630: CAN bus backbone
- 631: CAN transceiver
- 640: Instrument cluster
- 641: Dashboard display
- 642: Indicator lights
- 650: Infotainment system
- 651: Head unit
- 652: Navigation display
- 660: Audio system
- 661: Speaker outputs
- 670: Haptic feedback system
- 671: Seat vibration motors
- 680: ADAS controller
- 681: Lane-keeping assist
- 682: Adaptive cruise control
- 683: Emergency braking
- 690: Bluetooth module (optional)
- 691: 4G/5G modem (optional)
- 692: OBD-II interface (optional)

### Drawing Notes
- **Size:** Full A4 page
- **Orientation:** Landscape
- **Style:** Layered system architecture with clear boundaries between layers
- **Title:** "FIG. 6 - Vehicle Integration Architecture"

---

## Figure 7: Experimental Results Graphs

### Purpose
Present validation data showing detection accuracy, comparison with full-cap system, and prediction performance.

### Graph Layout (4 Panels on One Page)

**Panel A: Classification Accuracy Comparison (Top-Left)**
- **Type:** Bar chart
- **X-axis:** System configuration
  - Bar 1: "Full-Cap (4 channels: C3,C4,O1,O2)" 
  - Bar 2: "Headrest (2 channels: O1,O2)"
  - Bar 3: "Camera-based (reference)"
- **Y-axis:** Accuracy (%) - Range: 0-100%
- **Bar 1 Height:** 91.32% (blue bar)
- **Bar 2 Height:** 89.54% (green bar)
- **Bar 3 Height:** ~80% (gray bar, literature average)
- **Annotations:**
  - Arrow showing "1.95% drop" between Bar 1 and Bar 2
  - Text: "< 5% drop = Excellent performance"
  - Horizontal dashed line at 85% labeled "Viability Threshold"
- **Data Labels:** Show exact percentages on top of each bar
- **Title:** "(A) Classification Accuracy Comparison"

**Panel B: Precision-Recall by Class (Top-Right)**
- **Type:** Grouped bar chart
- **X-axis:** Metric (Precision, Recall, F1-Score)
- **Y-axis:** Value - Range: 0-1.0
- **Two Series:**
  - Series 1: "Awake Class" (light blue bars)
    - Precision: 0.95
    - Recall: 0.94
    - F1-Score: 0.94
  - Series 2: "Drowsy Class" (orange bars)
    - Precision: 0.75
    - Recall: 0.70
    - F1-Score: 0.72
- **Side-by-side bars** for each metric
- **Legend:** Awake vs. Drowsy
- **Title:** "(B) Precision-Recall by Class (2-Channel System)"

**Panel C: Confusion Matrix (Bottom-Left)**
- **Type:** 2×2 confusion matrix heatmap
- **Rows:** Actual Class (Awake, Drowsy)
- **Columns:** Predicted Class (Awake, Drowsy)
- **Cell Values:**
  - True Awake (Awake → Awake): 34,444 (dark green, 94%)
  - False Drowsy (Awake → Drowsy): 2,200 (light orange, 6%)
  - False Awake (Drowsy → Awake): 2,199 (light orange, 30%)
  - True Drowsy (Drowsy → Drowsy): 5,131 (dark orange, 70%)
- **Cell Annotations:** Show both count and percentage
- **Color Scale:** Green (correct) to Orange (incorrect)
- **Total Accuracy:** 89.54% (shown at bottom)
- **Title:** "(C) Confusion Matrix (Total 43,974 epochs)"

**Panel D: Temporal Prediction Performance (Bottom-Right)**
- **Type:** Line graph
- **X-axis:** Prediction Horizon (minutes ahead) - Range: 1 to 15 min
- **Y-axis:** Prediction Accuracy (%) - Range: 50-100%
- **Curve:** Exponential decay curve
  - At 1 min: 95% accuracy
  - At 5 min: 80% accuracy (marked with red dot)
  - At 10 min: 70% accuracy (marked with yellow dot)
  - At 15 min: 60% accuracy
- **Annotations:**
  - Red horizontal line at y=80%: "Red Alert Threshold (5 min ahead)"
  - Yellow horizontal line at y=70%: "Yellow Warning Threshold (10 min ahead)"
  - Shaded region above 80%: "High confidence zone"
  - Shaded region 70-80%: "Moderate confidence zone"
  - Shaded region below 70%: "Low confidence zone"
- **Title:** "(D) Prediction Accuracy vs. Time Horizon (Estimated)"

**Overall Figure Title (Top of Page):**
"FIG. 7 - Experimental Validation Results: (A) Accuracy Comparison, (B) Precision-Recall, (C) Confusion Matrix, (D) Prediction Performance"

### Labels (Reference Numerals)
- 700: Panel A (accuracy comparison)
- 701: Bar 1 (full-cap system)
- 702: Bar 2 (headrest system)
- 703: Bar 3 (camera reference)
- 704: Accuracy drop annotation
- 710: Panel B (precision-recall)
- 711: Awake class bars
- 712: Drowsy class bars
- 720: Panel C (confusion matrix)
- 721: True awake cell
- 722: False drowsy cell
- 723: False awake cell
- 724: True drowsy cell
- 730: Panel D (prediction performance)
- 731: Accuracy decay curve
- 732: Red alert threshold
- 733: Yellow warning threshold
- 734: Confidence zones

### Drawing Notes
- **Size:** Full A4 page
- **Orientation:** Landscape
- **Style:** Scientific publication-quality graphs with clear labels, gridlines, and legends
- **Data Source:** From your Phase B and Phase C validation results
- **Title:** "FIG. 7 - Experimental Validation Results"

---

## Figure 8: Sliding Window Processing Diagram

### Purpose
Illustrate the sliding window technique for continuous feature extraction and temporal analysis.

### Diagram Structure

**Timeline (Horizontal Axis - Top of Page):**
- **X-axis:** Time (seconds) - Range: 0 to 300 seconds (5 minutes)
- **Markers:** Tick marks every 30 seconds
- **Labels:** t=0, t=30, t=60, t=90, t=120, ..., t=300

**Raw EEG Signal (Top Section):**
- **Continuous waveform** spanning full timeline
- **Channel O1** (blue waveform)
- **Channel O2** (green waveform, slightly offset below)
- **Amplitude:** ±50 μV range
- **Frequency:** Mixed frequencies visible (theta, alpha, beta)
- **Annotation:** "Raw EEG Signal (Continuous Acquisition at 128 Hz)"

**Sliding Windows (Middle Section):**

**Window 1 (t=0 to t=60 sec):**
- **Rectangle** overlaid on raw signal from t=0 to t=60
- **Label:** "Window 1: 60 sec duration"
- **Shading:** Light blue transparent overlay
- **Arrow pointing down** to processing pipeline

**Window 2 (t=30 to t=90 sec):**
- **Rectangle** overlaid from t=30 to t=90
- **Label:** "Window 2: Step +30 sec (50% overlap)"
- **Shading:** Light green transparent overlay
- **Overlap region (t=30 to t=60):** Crosshatch pattern showing overlap with Window 1
- **Arrow pointing down** to processing pipeline

**Window 3 (t=60 to t=120 sec):**
- **Rectangle** from t=60 to t=120
- **Label:** "Window 3: Step +30 sec"
- **Shading:** Light yellow overlay
- **Overlap region:** Crosshatch with Window 2

**Window N (t=240 to t=300 sec):**
- **Rectangle** from t=240 to t=300
- **Label:** "Window N: Latest window"
- **Shading:** Light orange overlay
- **Dotted continuation:** "..." indicating more windows between Window 3 and Window N

**Processing Pipeline (Middle-Bottom Section):**

For **Window 2** (as example, with detailed breakdown):

**Step 1: Spectral Analysis (Box 1)**
- Input: 60-sec EEG segment (7680 samples at 128 Hz)
- Apply Welch's PSD
  - Segment size: 256 samples (2 sec)
  - Overlap: 50% (128 samples)
  - Number of segments: ~29
- Output: Power spectrum (0.5-40 Hz)
- **Mini graph:** Power spectrum inset showing peaks in theta (4-8 Hz) and alpha (8-13 Hz) bands
- ↓

**Step 2: Feature Extraction (Box 2)**
- Integrate PSD in frequency bands:
  - Theta Power (4-8 Hz): 12.5 μV²
  - Alpha Power (8-13 Hz): 15.3 μV²
  - Theta/Alpha Ratio: 0.82
- Output: Feature vector [theta=12.5, alpha=15.3, ratio=0.82]
- ↓

**Step 3: Temporal Buffer Update (Box 3)**
- Store in rolling buffer:
  - Time points: [..., t=30, t=60, t=90]
  - Theta values: [..., 11.2, 12.0, 12.5]
  - Alpha values: [..., 14.5, 14.9, 15.3]
  - Ratio values: [..., 0.77, 0.81, 0.82]
- Buffer size: Last 10 windows (5 minutes history)
- ↓

**Feature Time Series (Bottom Section):**

**Graph: Theta Power Over Time**
- **X-axis:** Time (minutes) - Range: 0 to 5 min
- **Y-axis:** Theta Power (μV²) - Range: 10 to 16
- **Data points:** Circles at 30-sec intervals (10 points total)
- **Trend line:** Linear regression fit (slight upward slope)
- **Slope annotation:** "dTheta/dt = +0.5 μV²/min"
- **Extrapolation:** Dotted line extending beyond t=5 min
- **Label:** "Theta Power Temporal Trend"

**Graph: Alpha Power Over Time** (Below theta graph)
- Similar structure to theta graph
- **Slope annotation:** "dAlpha/dt = +0.4 μV²/min"
- **Label:** "Alpha Power Temporal Trend"

**Prediction Arrow (Bottom-Right):**
- Large arrow pointing to:
- **Prediction Box:**
  - "Based on current trends:"
  - "Predicted time to threshold: 8.5 minutes"
  - "Alert: Yellow Warning (< 10 min)"

### Labels (Reference Numerals)
- 800: Timeline axis
- 801: Time markers
- 810: Raw EEG signal section
- 811: O1 channel waveform
- 812: O2 channel waveform
- 820: Window 1 rectangle
- 821: Window 2 rectangle
- 822: Window 3 rectangle
- 823: Window N rectangle
- 824: Overlap region (crosshatch)
- 830: Processing pipeline for Window 2
- 831: Spectral analysis box
- 832: PSD output graph
- 840: Feature extraction box
- 841: Feature vector output
- 850: Temporal buffer update box
- 851: Rolling buffer contents
- 860: Theta power time series graph
- 861: Theta data points
- 862: Theta trend line
- 863: Theta slope annotation
- 870: Alpha power time series graph
- 871: Alpha data points
- 872: Alpha trend line
- 873: Alpha slope annotation
- 880: Prediction box
- 881: Time-to-threshold calculation
- 882: Alert decision

### Drawing Notes
- **Size:** Full A4 page (may require 2 pages if detail needed)
- **Orientation:** Landscape
- **Style:** Technical diagram with timeline, overlapping windows, and processing flow
- **Title:** "FIG. 8 - Sliding Window Processing and Temporal Trend Analysis"

---

## Summary: All 8 Figures

### Figure Checklist for Patent Application

| Figure | Title | Purpose | Complexity | Estimated Drawing Time |
|--------|-------|---------|------------|----------------------|
| **Fig. 1** | System Block Diagram | Overall architecture | Medium | 3-4 hours |
| **Fig. 2** | Headrest Sensor Placement | Electrode positioning (3 views) | High | 4-5 hours |
| **Fig. 3** | Signal Processing Flowchart | Algorithm flow | Medium | 2-3 hours |
| **Fig. 4** | Temporal Trend Analysis | Prediction illustration | Medium | 3-4 hours |
| **Fig. 5** | Alert System State Diagram | State machine logic | Medium | 2-3 hours |
| **Fig. 6** | Vehicle Integration | System integration | High | 3-4 hours |
| **Fig. 7** | Experimental Results | Validation data (4 panels) | High | 4-5 hours |
| **Fig. 8** | Sliding Window Processing | Window technique | High | 4-5 hours |

**Total Estimated Time: 25-33 hours** for professional-quality drawings.

---

## Drawing Tools Recommendations

### Option 1: Professional Patent Drawing Services (Recommended)
- **Hire patent illustrator:** ₹5,000-15,000 per figure (₹40,000-1,20,000 total)
- **Turnaround:** 1-2 weeks
- **Quality:** Meets IPO standards perfectly
- **Services:**
  - Patent Drawing World (https://patentdrawing.world/)
  - IP Illustrations (https://ipillustrations.com/)
  - Local Indian patent drawing services (search "patent drawing services India")

### Option 2: DIY with Software Tools
- **Microsoft Visio:** Block diagrams, flowcharts (₹10,000-20,000 license)
- **Adobe Illustrator:** Professional vector graphics (₹1,700/month subscription)
- **LibreOffice Draw:** Free alternative for diagrams
- **Inkscape:** Free vector graphics editor (open source)
- **MATLAB/Python (matplotlib):** For graphs (Figures 4, 7)
- **EdrawMax:** Diagramming software (₹7,000 perpetual license)

### Option 3: Outsource to Freelancer
- **Platforms:** Fiverr, Upwork, Freelancer.com
- **Cost:** ₹500-2,000 per figure (₹4,000-16,000 total)
- **Quality:** Variable (check portfolio)
- **Turnaround:** 3-7 days

---

## Next Steps for Figures

### Immediate Actions (Next 2 Weeks)

**1. [ ] Decide on Drawing Method**
   - Budget: High (₹40,000-1,20,000) → Hire professional
   - Budget: Medium (₹10,000-30,000) → Buy software + DIY or freelancer
   - Budget: Low (< ₹5,000) → Free software + DIY

**2. [ ] Gather Reference Materials**
   - Screenshots from your notebook (Phase A, B, C graphs)
   - Headrest photos (for Figure 2 reference)
   - International 10-20 system diagram (public domain)
   - Vehicle interior photos (for integration diagram)

**3. [ ] Prioritize Figures for Provisional Filing**
   - **Must-have for provisional:** Figure 1 (System Block), Figure 2 (Headrest)
   - **Nice-to-have:** Figure 3 (Flowchart)
   - **Complete specification only:** Figures 4-8

**4. [ ] Create Rough Sketches**
   - Hand-draw rough versions of each figure
   - Use as reference for professional illustrator or as template for software

**5. [ ] Extract Data from Your Validation**
   - Figure 7 Panel A: 91.32% (full-cap) vs 89.54% (headrest) ✅ (you have this)
   - Figure 7 Panel B: Precision/recall values (compute from confusion matrix)
   - Figure 7 Panel C: Confusion matrix (extract from Phase 5 results)
   - Figure 7 Panel D: Prediction accuracy (estimate from Phase C temporal analysis)

---

## Integration with Patent Documents

### How Figures Reference Claims

- **Figure 1** supports **Claims 1, 2** (overall system, apparatus)
- **Figure 2** supports **Claims 1(a), 2(a), 16-19** (electrode placement, headrest design)
- **Figure 3** supports **Claims 1(b)-(k), 3** (method steps, algorithm)
- **Figure 4** supports **Claims 1(g), 1(h), 14, 29** (temporal trend analysis, prediction)
- **Figure 5** supports **Claims 1(i), 1(j), 1(k), 10, 11** (alert system, state logic)
- **Figure 6** supports **Claims 2(j), 12, 23, 24, 34** (vehicle integration, ADAS)
- **Figure 7** supports **Claims 6, 13, 31** (accuracy validation, performance metrics)
- **Figure 8** supports **Claims 4, 5, 9** (sliding window, Welch's method, temporal buffer)

### Figure-Claim Cross-Reference Table (for Patent Application)

Include in patent specification:

| Reference Numeral | Component/Feature | First Appears in Figure | Referenced in Claims |
|-------------------|-------------------|-------------------------|----------------------|
| 111, 112 | O1, O2 electrodes | Fig. 1, Fig. 2 | Claims 1, 2, 16-19 |
| 140-153 | Processing modules | Fig. 1 | Claims 1, 2, 3 |
| 181-184 | Alert levels | Fig. 1, Fig. 5 | Claims 1, 10, 11 |
| 210, 211 | O1/O2 positions | Fig. 2 | Claims 1, 2 |
| 360, 460-480 | Features (theta/alpha) | Fig. 3, Fig. 4 | Claims 1, 5, 9 |
| 500-530 | Alert states | Fig. 5 | Claims 1, 10, 11 |
| 600-692 | Vehicle integration | Fig. 6 | Claims 2, 12, 23-26, 34 |
| 700-730 | Validation results | Fig. 7 | Claims 6, 13 |
| 820-880 | Sliding windows | Fig. 8 | Claims 4, 5, 9 |

---

**Status:** Figure specifications complete. Ready for drawing execution.

**Current Patent Documentation Status:**
- ✅ PATENT_OUTLINE.md (roadmap)
- ✅ PATENT_TECHNICAL_SPECS.md (detailed specifications)
- ✅ PATENT_PRIOR_ART.md (competitive analysis)
- ✅ PATENT_CLAIMS.md (33 claims, Indian-specific)
- ✅ PATENT_FIGURES.md (this document - 8 figures specified)

**Remaining Documents:**
- [ ] PATENT_DETAILED_DESCRIPTION.md (technical description text)
- [ ] Actual figure drawings (8 figures to be drawn)
- [ ] Cover letter and forms (Form 1, 2, 3 for IPO)

---

**Next Actions:**

**Option C:** Write detailed description (PATENT_DETAILED_DESCRIPTION.md) - complete specification text  
**Option D:** Provisional filing guide (walk through IPO portal step-by-step)  
**Option E:** Help find patent drawing service or create DIY drawing templates  
**Option F:** Extract precise data from your notebook for Figure 7

**Your choice?**
