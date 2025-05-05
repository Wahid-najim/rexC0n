
# RexC0n
![30ade1f4-0a22-4336-aa7b-c61dce53707d](https://github.com/user-attachments/assets/daa4a163-0822-4468-a83f-a50d8ac218b2)

### Advanced Subdomain Enumeration Framework for Red Teams, Recon Operators & Bug Bounty Hunters


---

## 🧭 Overview

**RexC0n** is a streamlined Bash-based reconnaissance utility engineered for efficient subdomain enumeration. By combining the output of industry-grade tools and filtering the noise, it delivers actionable results in seconds.

Whether you're mapping an attack surface, prepping for an engagement, or collecting recon during bug bounty hunts, RexC0n acts as your first strike.

---

## ⚙️ Features

- ✅ Aggregates data from multiple proven sources
- 🔁 Removes duplicate entries with precision
- 🌐 Detects live assets using `httpx`
- 📁 Timestamped output in structured directories
- 🧪 Pre-checks dependencies before execution
- 🧩 Modular for easy tool integration
- 🧼 Clean CLI prompts with minimal friction

---

## 🛠 Dependencies

Ensure the following tools are installed and accessible via your terminal:

- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Assetfinder](https://github.com/tomnomnom/assetfinder)
- [Findomain](https://github.com/findomain/findomain)
- [Amass](https://github.com/owasp-amass/amass)
- [httpx](https://github.com/projectdiscovery/httpx)

> ⚠️ These tools must be present in your `$PATH`. You can verify each with the `-h` flag (e.g., `subfinder -h`).

---

## 🚀 Installation

```bash
# Clone the repository
git clone https://github.com/Wahid-najim/rexC0n.git

# Navigate into the project folder
cd rexC0n

# Make the script executable
chmod +x subdomain_enum.sh
```

---

## 🧪 Usage

```bash
# Basic interactive execution
./subdomain_enum.sh

# Help menu
./subdomain_enum.sh -h
```

---

## 📂 Output Structure

All findings are saved under a timestamped directory with this structure:

```
rexC0n/
├── subdomains/
│   ├── all_subdomains.txt
│   ├── subfinder.txt
│   ├── assetfinder.txt
│   └── ...
├── live_subdomains/
│   └── live_subdomains.txt
```

> Results are cleanly organized for quick reporting and tool chaining.

---

## 🧵 Sample Recon Flow

```
Target: example.com

> Running Subfinder, Assetfinder, Findomain, Amass...
> Aggregating results...
> Deduplicated: 2,315 unique subdomains
> Probing with httpx...
> Live assets identified: 248
```

From here, the output can be passed directly into:
- `nuclei` for vulnerability templates
- `dirsearch` or `ffuf` for directory fuzzing
- `waybackurls` for archived endpoint discovery

---

## 💡 Tips for Elite Recon

- Integrate **dnsx**, **massdns**, or **Chaos** for deeper discovery
- Use with `tmux` for parallel recon
- Automate post-processing with custom scripts

---

## 🤝 Contributions

Pull requests are welcome. To contribute:

```bash
# Fork and clone your copy
git clone https://github.com/YOUR-USERNAME/rexC0n.git

# Create a feature branch
git checkout -b feature/tool-enhancement

# Commit and push
git commit -m "Add: integrated dnsx support"
git push origin feature/tool-enhancement
```

Then open a Pull Request on GitHub.

---

## 🐞 Issues

Have suggestions, bugs, or tool requests? Open an issue:  
➡ [RexC0n Issues](https://github.com/Wahid-najim/rexC0n/issues)

---

## 📜 License

RexC0n is released under the [MIT License](LICENSE).  
You are free to modify, distribute, and use it with proper credit.

---

## 👤 Author

**Wahid Najim (0x1di0t)**  
Security Researcher | Founder of VirtuoINK
[GitHub](https://github.com/Wahid-najim)
[twitter](https://x.com/wahid61106)

---

> “First recon wins the fight. RexC0n makes sure you're first.”
