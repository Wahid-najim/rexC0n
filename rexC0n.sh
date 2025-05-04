#!/bin/bash

# Advanced Subdomain Enumeration Script
# created by Wahid Najim

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to display error and exit
error_exit() {
    echo -e "${RED}Error: $1${NC}" >&2
    exit 1
}

# Function to check if a command exists
check_command() {
    if ! command -v "$1" &> /dev/null; then
        error_exit "$1 is not installed. Please install it and try again."
    fi
}


# Function to display usage
usage() {
    echo -e "${YELLOW}Usage: $0${NC}"
    echo "This script performs advanced subdomain enumeration."
    echo "It requires Subfinder, Assetfinder, Findomain, Amass, and httpx."
    echo "Follow the prompts to specify domains and directory."
    exit 0
}

# Check for help flag
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    usage
fi

# Check for required tools
echo -e "${YELLOW}Checking for required tools...${NC}"
check_command subfinder
check_command assetfinder
check_command findomain
check_command amass
check_command httpx

# Prompt for output directory
echo -e "${GREEN}Enter the name for the new output directory (e.g., recon_output):${NC}"
read -r output_dir
if [ -z "$output_dir" ]; then
    output_dir="recon_$(date +%Y%m%d_%H%M%S)"
    echo -e "${YELLOW}No directory name provided. Using default: $output_dir${NC}"
fi

# Create and navigate to output directory
if [ -d "$output_dir" ]; then
    echo -e "${YELLOW}Directory $output_dir already exists. Overwrite? (y/n):${NC}"
    read -r overwrite
    if [[ "$overwrite" != "y" && "$overwrite" != "Y" ]]; then
        error_exit "Directory exists and overwrite not permitted."
    fi
    rm -rf "$output_dir" || error_exit "Failed to remove existing directory"
fi
mkdir -p "$output_dir" || error_exit "Failed to create directory $output_dir"
cd "$output_dir" || error_exit "Failed to navigate to $output_dir"
echo -e "${GREEN}Working in directory: $(pwd)${NC}"

# Prompt for domain input
echo -e "${GREEN}Enter the target domain(s) (comma-separated, e.g., example.com,example.org):${NC}"
read -r input_domains
if [ -z "$input_domains" ]; then
    error_exit "No domains provided."
fi

# Convert comma-separated domains to array
IFS=',' read -r -a domains <<< "$input_domains"

# Create subdirectories
mkdir -p subdomains live_subdomains || error_exit "Failed to create subdirectories"

# Initialize files
combined_subdomains="subdomains/all_subdomains.txt"
live_subdomains="live_subdomains/live_subdomains.txt"

# Function to run subdomain enumeration tools
run_subdomain_enumeration() {
    local domain="$1"
    echo -e "${YELLOW}Enumerating subdomains for $domain...${NC}"

    # Run Subfinder
    echo -e "${GREEN}Running Subfinder...${NC}"
    subfinder -d "$domain" -silent -o "subdomains/subfinder_$domain.txt" || echo -e "${RED}Subfinder failed for $domain${NC}"

    # Run Assetfinder
    echo -e "${GREEN}Running Assetfinder...${NC}"
    assetfinder --subs-only "$domain" > "subdomains/assetfinder_$domain.txt" || echo -e "${RED}Assetfinder failed for $domain${NC}"

    # Run Findomain
    echo -e "${GREEN}Running Findomain...${NC}"
    findomain -t "$domain" -u "subdomains/findomain_$domain.txt" || echo -e "${RED}Findomain failed for $domain${NC}"

    # Run Amass
    echo -e "${GREEN}Running Amass...${NC}"
    amass enum -d "$domain" -o "subdomains/amass_$domain.txt" || echo -e "${RED}Amass failed for $domain${NC}"

    # Combine and deduplicate subdomains
    echo -e "${GREEN}Combining and deduplicating subdomains for $domain...${NC}"
    cat subdomains/*_$domain.txt 2>/dev/null | sort -u >> "$combined_subdomains" || echo -e "${RED}Failed to combine subdomains for $domain${NC}"
}

# Function to check for live subdomains
check_live_subdomains() {
    echo -e "${YELLOW}Checking for live subdomains...${NC}"
    if [ -s "$combined_subdomains" ]; then
        httpx -l "$combined_subdomains" -silent -o "$live_subdomains" || echo -e "${RED}httpx failed to check live subdomains${NC}"
        if [ -s "$live_subdomains" ]; then
            echo -e "${GREEN}Found $(wc -l < "$live_subdomains") live subdomains${NC}"
        else
            echo -e "${YELLOW}No live subdomains found${NC}"
        fi
    else
        echo -e "${YELLOW}No subdomains to check for liveness${NC}"
    fi
}

# Main execution loop
for domain in "${domains[@]}"; do
    domain=$(echo "$domain" | xargs) # Trim whitespace
    if [[ -z "$domain" ]]; then
        continue
    fi
    run_subdomain_enumeration "$domain"
done

# Deduplicate combined subdomains
if [ -s "$combined_subdomains" ]; then
    sort -u "$combined_subdomains" -o "$combined_subdomains"
    echo -e "${GREEN}Total unique subdomains: $(wc -l < "$combined_subdomains")${NC}"
else
    echo -e "${YELLOW}No subdomains found${NC}"
fi

# Check live subdomains
check_live_subdomains

# Summary
echo -e "${GREEN}Subdomain enumeration completed!${NC}"
echo -e "${YELLOW}Results summary:${NC}"
echo "- All subdomains: $combined_subdomains"
echo "- Live subdomains: $live_subdomains"
echo -e "${GREEN}Check the subdomains and live_subdomains directories for detailed results.${NC}"

exit 0
