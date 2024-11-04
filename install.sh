#!/bin/bash

green="\e[32m"
red="\e[31m"
white="\e[97m"
yellow="\e[33m"
reset="\e[0m"

echo -e "${yellow}Cobra-Text Installation${reset}"
sleep 3
if [[ $(id -u) -ne 0 ]]; then
    echo -e "${red}Error:${white} Root access is required. Please run with sudo or as root.${reset}"
    exit 1
fi

system="/usr/bin"

echo -e "${white}Installing required package...${reset}"
sleep 2
pip install StealthText
clear
if python3 -c "import stealthtext" &>/dev/null; then
    echo -e "${white}[${green}+${white}] ${green}StealthText package successfully installed.${reset}"
else
    echo -e "${white}[${red}✖${white}] ${red}Failed to install StealthText. Please check your Python and pip installation.${reset}"
    exit 1
fi
sleep 3
clear

if mv bin/cobra-text "$system/cobra-text"; then
    chmod +x "$system/cobra-text"
    echo -e "${white}[${green}+${white}] ${green}Cobra-Text successfully installed to $system.${reset}"
else
    echo -e "${white}[${red}✖${white}] ${red}Failed to move cobra-text. Ensure it is in the current directory.${reset}"
    exit 1
fi
sleep 3
if command -v cobra-text &>/dev/null; then
    echo -e "${white}[${green}+${white}] ${green}Installation complete! You can now use the ${yellow}cobra-text${green} command.${reset}"
else
    echo -e "${white}[${red}✖${white}] ${red}Installation failed. Please verify your permissions and try again.${reset}"
    exit 1
fi
