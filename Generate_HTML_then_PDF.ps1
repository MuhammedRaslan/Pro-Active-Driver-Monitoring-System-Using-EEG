# Patent Document HTML Generator
# Version: 1.0
# Date: March 5, 2026
# Instructions: Generate HTML files, then open in browser and Ctrl+P to print to PDF

Set-Location "C:\Users\muham\OneDrive\Documents\#1_DMS"

Write-Host "`nGenerating HTML files with IPO-compliant styling...`n" -ForegroundColor Cyan

$docs = @(
    "PATENT_CLAIMS",
    "PATENT_DETAILED_DESCRIPTION", 
    "PATENT_FIGURES",
    "PATENT_PRIOR_ART",
    "PATENT_TECHNICAL_SPECS",
    "PATENT_PROVISIONAL_FILING_GUIDE",
    "PATENT_FORMS_TEMPLATE"
)

$cssStyle = @"
<style>
    @page {
        size: A4;
        margin: 2.5cm 2.5cm 2.5cm 2.5cm;
    }
    body {
        font-family: 'Times New Roman', Times, serif;
        font-size: 11pt;
        line-height: 1.5;
        color: black;
        max-width: 21cm;
        margin: 0 auto;
        padding: 2.5cm;
    }
    h1 { font-size: 16pt; font-weight: bold; margin-top: 24pt; margin-bottom: 12pt; }
    h2 { font-size: 14pt; font-weight: bold; margin-top: 18pt; margin-bottom: 10pt; }
    h3 { font-size: 12pt; font-weight: bold; margin-top: 14pt; margin-bottom: 8pt; }
    p { margin-bottom: 12pt; text-align: justify; }
    code { font-family: 'Courier New', monospace; font-size: 10pt; }
    pre { font-family: 'Courier New', monospace; font-size: 10pt; background: #f5f5f5; padding: 10pt; border: 1px solid #ddd; }
    table { border-collapse: collapse; width: 100%; margin: 12pt 0; }
    th, td { border: 1px solid black; padding: 6pt; text-align: left; }
    th { background: #f0f0f0; font-weight: bold; }
    @media print {
        body { margin: 0; padding: 0; }
        h1, h2, h3 { page-break-after: avoid; }
        table, figure, img { page-break-inside: avoid; }
    }
</style>
"@

$success = 0

foreach ($doc in $docs) {
    if (Test-Path "$doc.md") {
        Write-Host "Converting $doc.md to HTML..." -ForegroundColor Yellow
        
        pandoc "$doc.md" -o "$doc.html" --standalone --toc --toc-depth=3 --number-sections --css=data:text/css;base64,$([Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($cssStyle)))
        
        if (Test-Path "$doc.html") {
            Write-Host "  Created $doc.html" -ForegroundColor Green
            $success++
        }
    }
}

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "Complete: $success HTML files generated" -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Cyan

Write-Host "NEXT STEPS TO CREATE PDFs:" -ForegroundColor Yellow
Write-Host "1. Open each HTML file in Microsoft Edge or Chrome" -ForegroundColor White
Write-Host "2. Press Ctrl+P (Print)" -ForegroundColor White
Write-Host "3. Select 'Microsoft Print to PDF' or 'Save as PDF'" -ForegroundColor White
Write-Host "4. Settings:" -ForegroundColor White
Write-Host "   - Paper: A4" -ForegroundColor Gray
Write-Host "   - Margins: Default" -ForegroundColor Gray
Write-Host "   - Scale: 100%" -ForegroundColor Gray
Write-Host "   - Include headers/footers: Optional" -ForegroundColor Gray
Write-Host "5. Click 'Save' and choose location`n" -ForegroundColor White

Write-Host "HTML files generated:" -ForegroundColor Cyan
Get-ChildItem "PATENT_*.html" | Sort-Object Name | ForEach-Object {
    Write-Host "  $($_.Name)" -ForegroundColor White
}

Write-Host "`nAlternative: Open .md files directly in Microsoft Word, then File > Save As > PDF`n" -ForegroundColor Yellow
