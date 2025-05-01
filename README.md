
![30ade1f4-0a22-4336-aa7b-c61dce53707d](https://github.com/user-attachments/assets/b40dda4a-2712-4844-a888-eebfde8fe18a)


<p align="center"> <img src="A_logo_for_&quot;RexC0n&quot;_features_a_digital_illustratio.png" alt="RexC0n Logo" width="300"/> </p> <h1 align="center"><strong>RexC0n</strong></h1> <h3 align="center">⚔️ Advanced Subdomain Enumeration | Built for Offensive Security</h3> <p align="center"> <img src="https://img.shields.io/badge/status-active-success?style=for-the-badge&logo=gnometerminal&color=0ebeff" /> <img src="https://img.shields.io/badge/bash-powered-121212?style=for-the-badge&logo=gnu-bash&logoColor=white" /> <img src="https://img.shields.io/badge/version-1.0.0-informational?style=for-the-badge&color=blue" /> <img src="https://img.shields.io/badge/license-MIT-critical?style=for-the-badge&logo=opensourceinitiative" /> </p>
🕶️ About

RexC0n is a high-performance subdomain enumeration script crafted for offensive security professionals. It unifies multiple elite tools—Subfinder, Assetfinder, Findomain, Amass, and httpx—into a single, streamlined Bash workflow. Designed for precision and speed, it’s the go-to recon framework for red teamers, bug bounty hunters, and ethical hackers.
🔥 Features

    🧠 Smart aggregation and deduplication of results

    ⚡️ Live subdomain detection using httpx

    🗂️ Auto-organized output with timestamped folders

    🛡️ Silent error handling and clean CLI experience

    🧪 Tool health checks before execution

    🧵 Modular and easy to expand

🛠 Requirements

Ensure the following tools are installed and configured in your $PATH:

    Subfinder

    Assetfinder

    Findomain

    Amass

    httpx

🧬 Installation

# Clone the repository
git clone https://github.com/Wahid-najim/rexC0n.git

# Change directory
cd rexC0n

# Verify tools are installed
subfinder -h
assetfinder -h
findomain -h
amass -h
httpx -h

# Make script executable
chmod +x subdomain_enum.sh

⚙️ Usage

Run the script and follow the interactive prompts:

./subdomain_enum.sh

For help:

./subdomain_enum.sh -h

📁 Output Structure

rexC0n/
├── subdomains/
│   ├── all_subdomains.txt
│   ├── toolname_output.txt
├── live_subdomains/
│   └── live_subdomains.txt

All output is timestamped and categorized for easy reference and reporting.
🤖 Example Workflow

Target: example.com
➡️ Fetching from 5+ tools...
➡️ Deduplicating results...
✅ Found: 2,000 subdomains
📡 Probing for live hosts...
🔥 Live domains: 200

🧠 Pro Tips

    Add massdns, dnsx, or chaos for deeper integration.

    Combine with waybackurls for hidden endpoints.

    Pipe live domains into nuclei or dirsearch for immediate attack surface mapping.

🤝 Contributing

You’re welcome to contribute:

# Fork and clone
git clone https://github.com/YOUR-USERNAME/rexC0n.git

# Create new branch
git checkout -b feature-x

# Commit and push
git commit -m "Add epic feature"
git push origin feature-x

# Open Pull Request

🐞 Issues

Got an idea? Found a bug? Open an issue or start a discussion.
📜 License

This project is licensed under the MIT License.
See the LICENSE file for details.
🧑‍💻 Author

Wahid Najim
Cybersecurity Researcher & Offensive Toolsmith
