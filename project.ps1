# ============================================================
#              PROJECT CONFIGURATION (CUSTOMIZED)
# ============================================================
$projectName     = "pishing-of-email-task-2"
$yourName        = "jahanavipohar"

# Your GitHub repo (provided by you)
$remoteURL       = "https://github.com/Jahnavipohar08/pishing-of-email-task-2.git"

# Sample phishing email
$sampleURL       = "https://raw.githubusercontent.com/mattnotmax/cyberchef-recipes/master/phishing-samples/sample-email.txt"

# Screenshots to download
$phishImages = @(
    "https://i.imgur.com/Zz0vTqB.png",
    "https://i.imgur.com/PQWn3kT.png",
    "https://i.imgur.com/8R2l1lP.png"
)

# ============================================================
#           CREATE PROJECT FOLDER STRUCTURE
# ============================================================
if (!(Test-Path $projectName)) {
    New-Item -ItemType Directory -Path $projectName | Out-Null
}
Set-Location $projectName

New-Item -ItemType Directory -Path "screenshots" -Force | Out-Null

# ============================================================
#                DOWNLOAD SAMPLE EMAIL
# ============================================================
try {
    Invoke-WebRequest -Uri $sampleURL -OutFile "phishing_sample.txt" -UseBasicParsing
    Write-Host "Downloaded phishing_sample.txt"
} catch {
    Write-Host "Failed to download sample — creating empty file."
    New-Item -ItemType File -Path "phishing_sample.txt" | Out-Null
}

# ============================================================
#           DOWNLOAD PHISHING SCREENSHOTS
# ============================================================
$count = 1
foreach ($img in $phishImages) {
    $file = "screenshot_$count.png"
    try {
        Invoke-WebRequest -Uri $img -OutFile ".\screenshots\$file" -UseBasicParsing
        Write-Host "Downloaded: $file"
    } catch {
        Write-Host "Failed to download $file"
    }
    $count++
}

# ============================================================
#                    CREATE README.md
# ============================================================
Set-Content -Path "README.md" -Value @"
# Phishing Email Analysis Project
Automatically generated via PowerShell.
Created by **$yourName**

## Files Included
- phishing_sample.txt  
- screenshots/  
- analysis_report.md  
- tools_used.md  

## Purpose
A demonstration of phishing email investigation methods.

## Author
**$yourName**
"@

# ============================================================
#                CREATE analysis_report.md
# ============================================================
Set-Content -Path "analysis_report.md" -Value @"
# Phishing Email Analysis Report — $yourName

## Sender Review
(Add your findings)

## Header Review
(Add SPF / DKIM / DMARC)

## URL & Indicator Review
(Add mismatches, redirects, suspicious domains)

## Language Tricks
(Urgency, fear, misspellings)

## Verdict
Likely phishing email. Evidence stored in screenshots folder.
"@

# ============================================================
#                CREATE tools_used.md
# ============================================================
Set-Content -Path "tools_used.md" -Value @"
# Tools Used
- CyberChef
- URL Expander
- Header Analyzer
- Online Sandbox Tools
"@

# ============================================================
#                    OPTIONAL: GIT SETUP
# ============================================================
if (!(Test-Path ".git")) {
    git init
}

git add .
git commit -m "Initial auto-generated phishing analysis project" --no-verify

Write-Host "`n==================================================="
Write-Host " PROJECT READY! You can now push manually:"
Write-Host "   git remote add origin $remoteURL"
Write-Host "   git branch -M main"
Write-Host "   git push -u origin main"
Write-Host "===================================================`n"