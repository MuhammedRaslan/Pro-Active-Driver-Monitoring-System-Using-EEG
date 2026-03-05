# Patent Document PDF Generator - Ultra Simple Version
# Version: 1.2
# Date: March 5, 2026

Set-Location "C:\Users\muham\OneDrive\Documents\#1_DMS"

Write-Host "`nStarting PDF generation...`n" -ForegroundColor Cyan

$docs = @(
    "PATENT_CLAIMS",
    "PATENT_DETAILED_DESCRIPTION", 
    "PATENT_FIGURES",
    "PATENT_PRIOR_ART",
    "PATENT_TECHNICAL_SPECS",
    "PATENT_PROVISIONAL_FILING_GUIDE",
    "PATENT_FORMS_TEMPLATE"
)

$success = 0
$failed = 0

foreach ($doc in $docs) {
    if (Test-Path "$doc.md") {
        Write-Host "Processing $doc..." -ForegroundColor Yellow
        pandoc "$doc.md" -o "$doc.pdf" --pdf-engine=xelatex -V geometry:a4paper -V geometry:margin=2.5cm -V fontsize=11pt -V mainfont="Times New Roman" -V linestretch=1.5 --number-sections --toc --toc-depth=3
        
        if (Test-Path "$doc.pdf") {
            $size = [math]::Round((Get-Item "$doc.pdf").Length / 1KB, 2)
            Write-Host "  Created $doc.pdf ($size KB)" -ForegroundColor Green
            $success++
        } else {
            Write-Host "  Failed $doc.pdf" -ForegroundColor Red
            $failed++
        }
    }
}

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "Complete: $success succeeded, $failed failed" -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Cyan

Write-Host "Generated PDFs:" -ForegroundColor Yellow
Get-ChildItem "PATENT_*.pdf" | Sort-Object Name | ForEach-Object {
    $size = [math]::Round($_.Length / 1KB, 2)
    Write-Host "  $($_.Name) - $size KB" -ForegroundColor White
}

Write-Host "`nNext: Review PDFs and file at https://ipindiaonline.gov.in/epatentfiling/`n" -ForegroundColor Cyan

