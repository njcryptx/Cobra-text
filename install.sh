#!/bin/bash

green="\e[32m"
red="\e[31m"
white="\e[97m"
yellow="\e[33m"
reset="\e[0m"

echo -e "${yellow}Cobra-Text Installer${reset}"

if [[ -d /usr/bin ]]; then
    if [[ $(id -u) -ne 0 ]]; then
        echo -e "${red}Error:${white} Root access is required. Please run with sudo or as root.${reset}"
        exit 1
    fi
fi

if [[ -d /usr/bin ]]; then
    system="/usr/bin"
elif [[ -d /data/data/com.termux/files/usr/bin ]]; then
    system="/data/data/com.termux/files/usr/bin"
else
    echo -e "${red}Error:${white} Unsupported system environment. Exiting.${reset}"
    exit 1
fi

pip install StealthText

if mv bin/cobra-text "$system/cobra-text"; then
    chmod +x "$system/cobra-text"
    echo -e "${white}[${green}+${white}] ${green}File moved to $system and permissions set.${reset}"
else
    echo -e "${white}[${red}✖${white}] ${red}Failed to move file. Please ensure cobra-text is in the current directory.${reset}"
    exit 1
fi

if [[ $(command -v cobra-text) ]]; then
    echo -e "${white}[${green}+${white}] ${green}Installation successful! You can now use ${yellow}cobra-text${green} command.${reset}"
else
    echo -e "${white}[${red}✖${white}] ${red}Installation failed. Please check permissions and try again.${reset}"
    exit 1
fi
