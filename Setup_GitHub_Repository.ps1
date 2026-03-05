# GitHub Repository Setup Script
# This script helps you create a new GitHub repository and push your patent project

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GitHub Repository Setup for EEG Patent Project" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
$gitInstalled = Get-Command git -ErrorAction SilentlyContinue

if (-not $gitInstalled) {
    Write-Host "ERROR: Git is not installed." -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git first:" -ForegroundColor Yellow
    Write-Host "  Option 1: winget install --id Git.Git -e --source winget" -ForegroundColor White
    Write-Host "  Option 2: Download from https://git-scm.com/download/win" -ForegroundColor White
    Write-Host ""
    exit
}

Write-Host "SUCCESS: Git is installed" -ForegroundColor Green
Write-Host ""

# Change to project directory
$projectPath = "C:\Users\muham\OneDrive\Documents\#1_DMS"
Set-Location $projectPath

Write-Host "Project Directory: $projectPath" -ForegroundColor Cyan
Write-Host ""

# Initialize Git repository
if (-not (Test-Path ".git")) {
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
    Write-Host "SUCCESS: Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "SUCCESS: Git repository already initialized" -ForegroundColor Green
}
Write-Host ""

# Check Git configuration
Write-Host "Checking Git configuration..." -ForegroundColor Yellow
$gitUserName = git config user.name 2>$null
$gitUserEmail = git config user.email 2>$null

if (-not $gitUserName -or -not $gitUserEmail) {
    Write-Host ""
    Write-Host "WARNING: Git user configuration not set." -ForegroundColor Yellow
    Write-Host "Please configure Git with your information:" -ForegroundColor White
    Write-Host ""
    
    $userName = Read-Host "Enter your name"
    $userEmail = Read-Host "Enter your email"
    
    git config user.name "$userName"
    git config user.email "$userEmail"
    
    Write-Host ""
    Write-Host "SUCCESS: Git configured with:" -ForegroundColor Green
    Write-Host "  Name: $userName" -ForegroundColor White
    Write-Host "  Email: $userEmail" -ForegroundColor White
} else {
    Write-Host "SUCCESS: Git already configured:" -ForegroundColor Green
    Write-Host "  Name: $gitUserName" -ForegroundColor White
    Write-Host "  Email: $gitUserEmail" -ForegroundColor White
}
Write-Host ""

# Stage all files
Write-Host "Staging files for commit..." -ForegroundColor Yellow
git add .

# Show status
Write-Host ""
Write-Host "Files to be committed:" -ForegroundColor Cyan
git status --short

# Create initial commit
Write-Host ""
Write-Host "Creating initial commit..." -ForegroundColor Yellow

$commitMessage = @"
Initial commit: EEG proactive drowsiness detection

Complete technical validation with patent documentation
"@

git commit -m $commitMessage

Write-Host "SUCCESS: Initial commit created" -ForegroundColor Green
Write-Host ""

# Instructions for GitHub
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "NEXT STEPS: Create GitHub Repository" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "1. Go to GitHub: https://github.com/new" -ForegroundColor Yellow
Write-Host "   - Repository name: eeg-proactive-dms" -ForegroundColor White
Write-Host "   - Description: EEG-based proactive driver drowsiness detection (Patent Pending)" -ForegroundColor White
Write-Host "   - Visibility: PRIVATE (recommended until patent grant)" -ForegroundColor White
Write-Host "   - DO NOT initialize with README or .gitignore" -ForegroundColor Red
Write-Host "   - Click Create repository" -ForegroundColor White
Write-Host ""

Write-Host "2. After creating repository, run these commands:" -ForegroundColor Yellow
Write-Host ""
Write-Host "   git remote add origin https://github.com/YOUR-USERNAME/eeg-proactive-dms.git" -ForegroundColor Green
Write-Host "   git branch -M main" -ForegroundColor Green
Write-Host "   git push -u origin main" -ForegroundColor Green
Write-Host ""

Write-Host "3. Replace YOUR-USERNAME with your actual GitHub username" -ForegroundColor Yellow
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "WHAT IS INCLUDED IN THIS REPOSITORY" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "SUCCESS: README.md - Comprehensive project overview" -ForegroundColor Green
Write-Host "SUCCESS: .gitignore - Excludes large EEG data files" -ForegroundColor Green
Write-Host "SUCCESS: Jupyter notebook - Main analysis" -ForegroundColor Green
Write-Host "SUCCESS: 8 Patent documents" -ForegroundColor Green
Write-Host "SUCCESS: WORK_DIARY.md - Complete project log" -ForegroundColor Green
Write-Host "SUCCESS: Filing guides and checklists" -ForegroundColor Green
Write-Host ""
Write-Host "Note: DROZY and SADT data folders excluded (too large)" -ForegroundColor Yellow
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "PRIVACY RECOMMENDATION" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "IMPORTANT: Choose PRIVATE repository until patent grant" -ForegroundColor Yellow
Write-Host ""
Write-Host "  Protects unpublished patent details" -ForegroundColor White
Write-Host "  Prevents potential prior art issues" -ForegroundColor White
Write-Host "  Can make public after patent grant" -ForegroundColor White
Write-Host "  Free for unlimited private repos on GitHub" -ForegroundColor White
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Local repository initialized and ready!" -ForegroundColor Green
Write-Host "Follow the steps above to push to GitHub." -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
