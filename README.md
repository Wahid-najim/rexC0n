# RexC0n
Advanced Subdomain Enumeration Tool

RexC0n is a robust Bash script designed for comprehensive subdomain enumeration. It leverages powerful tools such as Subfinder, Assetfinder, Findomain, Amass, and httpx to deliver accurate and structured results. With automated directory management, live subdomain verification, and built-in error handling, this script streamlines reconnaissance workflows for security professionals and bug bounty hunters.
## 🚀 Features

    Seamless integration of leading subdomain enumeration tools

    Consolidation and deduplication of results

    Live subdomain detection using httpx

    Organized output structure with user-defined directories

    User-friendly prompts and error-handling mechanisms

## 🛠 Requirements

Ensure the following tools are installed and accessible in your system's PATH:

    subfinder

    assetfinder

    findomain

    amass

    httpx

## 📦 Installation

# Clone the repository
git clone https://github.com/Wahid-najim/rexC0n.git

# Navigate into the project directory
cd rexC0n

# Verify the required tools are installed
subfinder -h
assetfinder -h
findomain -h
amass -h
httpx -h

# Make the script executable
 chmod +x subdomain_enum.sh

⚙️ Usage

To start the enumeration process:

./subdomain_enum.sh

To display help options:

./subdomain_enum.sh -h

The script will prompt for:

    Output directory

    Target domain(s)

📁 Output Structure

    All Subdomains: subdomains/all_subdomains.txt

    Live Subdomains: live_subdomains/live_subdomains.txt

    Raw Tool Outputs: Stored within the subdomains/ directory

🤝 Contributing

Contributions are welcome! To contribute:

    Fork the repository

    Create a new branch: git checkout -b feature-branch

    Commit your changes: git commit -m "Add new feature"

    Push to your branch: git push origin feature-branch

    Open a Pull Request

🐞 Issues

Encountered a bug or have suggestions for improvements?
Please submit an issue via the GitHub Issues page.
📄 License

This project is licensed under the MIT License.
See the LICENSE file for full details.
👨‍💻 Author

Wahid Najim aka 0x1di0t
