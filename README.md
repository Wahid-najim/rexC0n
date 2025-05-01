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
git clone https://github.com/Wahid-najim/rexC0n.git
2. Navigate to the repository:
cd rexC0n
3. Ensure the required tools are installed:
subfinder -h
assetfinder -h
findomain -h
amass -h
httpx -h
4. Make the script executable:
chmod +x subdomain_enum.sh

## Usage
Run the script and follow the prompts to specify the output directory and target domains:
./subdomain_enum.sh
For help:
./subdomain_enum.sh -h

## Output
- All subdomains: subdomains/all_subdomains.txt
- Live subdomains: live_subdomains/live_subdomains.txt
- Detailed tool outputs are stored in the subdomains/ directory.

## Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes and commit (git commit -m "Add feature").
4. Push to the branch (git push origin feature-branch).
5. Open a Pull Request.

## Issues
If you encounter any issues or have suggestions, please open an issue on the [GitHub Issues page](https://github.com/Wahid-najim/rexC0n/issues).

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Wahid Najim
