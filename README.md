📧 Phishing Email Analysis — PowerShell Toolkit
A cybersecurity email‑investigation project by Jahanavi Pohar

This repository contains a complete PowerShell‑based toolkit that analyzes suspicious emails and identifies common phishing indicators such as spoofed senders, malicious links, urgent language, and grammar inconsistencies.
It includes a sample phishing email, analysis notes, screenshots, and auto‑generated documentation.

🔍 Project Overview
This project demonstrates how to investigate a phishing email through multiple steps:

✔ Sender Identity Verification
Detecting spoofed or impersonated email addresses.

✔ URL & Link Safety Checks
Extracting:

Embedded hyperlinks

Plain-text URLs

URL shorteners

Typosquatting domains

HTTP vs HTTPS issues

✔ Social Engineering Indicators
Identifying:

Threatening / urgent language

Emotional pressure tactics

Request for sensitive information

✔ Grammar & Styling Red Flags
Spotting unusual formatting or spelling mistakes commonly used in phishing emails.

✔ Evidence Collection
Screenshots + extracted data stored in the project folder.

📁 Repository Structure
pishing-of-email-task-2/
│
├─ phishing_sample.txt          # Downloaded suspicious email text
├─ screenshots/                 # Evidence images
│   ├─ screenshot_1.png
│   ├─ screenshot_2.png
│   └─ screenshot_3.png
│
├─ analysis_report.md           # Email investigation report
├─ tools_used.md                # Tools involved in the analysis
├─ README.md                    # This documentation
└─ build_project.ps1            # Auto‑project generation script
🚀 How to Use This Project
1️⃣ Clone the repository
git clone https://github.com/Jahnavipohar08/pishing-of-email-task-2.git
cd pishing-of-email-task-2
2️⃣ Open the project in VS Code
code .
3️⃣ Run the PowerShell generation script (optional)
Set-ExecutionPolicy Bypass -Scope Process -Force
.\build_project.ps1
4️⃣ Review the phishing evidence
Validate the sender

Expand suspicious URLs

Document indicators of compromise

5️⃣ Read the analysis report
Open analysis_report.md for the full investigation summary.

🛠 Tools & Techniques Used
Header analysis utilities

CyberChef for decoding & inspection

URL expander tools

Threat‑intel lookups

PowerShell automation scripts

🧠 Learning Outcomes
By completing this project, learners gain knowledge in:

Email forensics

Recognizing phishing tactics

Automation with PowerShell

Cybersecurity documentation

Evidence handling & reporting

📝 Future Enhancements
SPF / DKIM / DMARC authentication checks

Machine-learning‑based phishing detection

Automatic malicious‑domain reputation lookup

HTML rendering + DOM link extraction

Integration with VirusTotal API

✒️ Author
Jahanavi Pohar
Cybersecurity Enthusiast & Analyst
