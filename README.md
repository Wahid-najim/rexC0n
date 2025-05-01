# RexC0n
## Advanced Subdomain Enumeration Script

A Bash script for comprehensive subdomain enumeration using Subfinder, Assetfinder, Findomain, Amass, and httpx. It provides structured output, live subdomain detection, error handling, and directory management.

## Features
- Integrates multiple subdomain enumeration tools
- Combines and deduplicates results
- Checks for live subdomains using httpx
- Organizes output in a user-specified directory
- Includes error handling and usage prompts

## Requirements
- Subfinder
- Assetfinder
- Findomain
- Amass
- httpx

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Wahid-najim/rexC0n.git

Navigate to the repository:
bash
   cd rexC0n 

Ensure the required tools are installed:
bash

subfinder -h
assetfinder -h
findomain -h
amass -h
httpx -h

Make the script executable:
bash

chmod +x subdomain_enum.sh

Usage
Run the script and follow the prompts to specify the output directory and target domains:
bash

./subdomain_enum.sh

For help:
bash

./subdomain_enum.sh -h

Output
All subdomains: subdomains/all_subdomains.txt

Live subdomains: live_subdomains/live_subdomains.txt

Detailed tool outputs are stored in the subdomains/ directory.

Contributing
Contributions are welcome! Please follow these steps:
Fork the repository.

Create a new branch (git checkout -b feature-branch).

Make your changes and commit (git commit -m "Add feature").

Push to the branch (git push origin feature-branch).

Open a Pull Request.

Issues
If you encounter any issues or have suggestions, please open an issue on the GitHub Issues page.
License
This project is licensed under the MIT License. See the LICENSE file for details.
Author

