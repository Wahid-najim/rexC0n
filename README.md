<p align="center"> <img src="https://github.com/user-attachments/assets/b40dda4a-2712-4844-a888-eebfde8fe18a/30ade1f4-0a22-4336-aa7b-c61dce53707d" alt="RexC0n Banner" width="100%" /> </p> <p align="center"> <img src="A_logo_for_&quot;RexC0n&quot;_features_a_digital_illustratio.png" alt="RexC0n Logo" width="260" /> </p> <h1 align="center"><strong>RexC0n</strong></h1> <h3 align="center">⚔️ Precision Reconnaissance Script for Subdomain Enumeration | Built for Red Teams</h3> <p align="center"> <img src="https://img.shields.io/badge/status-actively%20maintained-success?style=for-the-badge&logo=hackthebox&color=0ebeff" /> <img src="https://img.shields.io/badge/bash-weaponized-black?style=for-the-badge&logo=gnubash&logoColor=white" /> <img src="https://img.shields.io/badge/version-1.0.0-blue?style=for-the-badge" /> <img src="https://img.shields.io/badge/license-MIT-red?style=for-the-badge&logo=opensourceinitiative" /> </p>
🕶️ Overview

RexC0n is a weapon-grade Bash utility designed for elite subdomain enumeration. Combining the firepower of Subfinder, Assetfinder, Findomain, Amass, and httpx, this tool offers an automated, modular, and highly effective recon pipeline. Crafted for red teamers, bug bounty hunters, and offensive security professionals.

    🔍 "RexC0n turns raw reconnaissance into actionable intelligence." — Anonymous Operator

🔥 Features

    🧠 Intelligent aggregation with result deduplication

    ⚡ Rapid live host detection via httpx

    📁 Timestamped directory structure for clean reporting

    🧪 Pre-execution tool validation

    🛡️ Clean UX with error handling & input prompts

    🔌 Modular for plug-and-play integration

🛠️ Dependencies

Ensure the following reconnaissance tools are pre-installed and accessible via $PATH:

    Subfinder

    Assetfinder

    Findomain

    Amass

    httpx

🧬 Installation

# Clone the repository
git clone https://github.com/Wahid-najim/rexC0n.git

# Enter directory
cd rexC0n

# Check tool availability
subfinder -h
assetfinder -h
findomain -h
amass -h
httpx -h

# Make the script executable
chmod +x subdomain_enum.sh

⚙️ Usage

Run interactively with prompts:

./subdomain_enum.sh

Display help menu:

./subdomain_enum.sh -h

📂 Output Directory Structure

rexC0n/
├── subdomains/
│   ├── all_subdomains.txt
│   ├── subfinder.txt
│   ├── assetfinder.txt
│   └── ...
├── live_subdomains/
│   └── live_subdomains.txt

All data is timestamped and organized for easy analysis or integration with other tools.
🧠 Pro Workflow Example

🎯 Target: example.com
🔎 Fetching from 5+ intel sources...
🧹 Cleaning & deduplicating...
✅ Total Unique: 2,000
📡 Probing with httpx...
🔥 Live Domains: 200+

💡 Pro Tips

    Add tools like massdns, dnsx, or chaos for advanced DNS resolution.

    Pipe live domains into nuclei for vulnerability fingerprinting.

    Use with waybackurls or gau for endpoint mining.

    Pair with ffuf or dirsearch for immediate attack surface mapping.

🤝 Contributing

We welcome contributions from the infosec community:

# Fork the repo
git clone https://github.com/YOUR-USERNAME/rexC0n.git

# Create feature branch
git checkout -b new-feature

# Commit and push changes
git commit -m "Add new module"
git push origin new-feature

# Open Pull Request

🐞 Reporting Issues

Found a bug or want to suggest an enhancement?
Open an issue on the GitHub Issues page.
📜 License

This project is released under the MIT License.
Free for personal and professional use.
👤 Author

Wahid Najim
Cybersecurity Researcher | Red Team Developer | Founder of VirtuoInk
GitHub
