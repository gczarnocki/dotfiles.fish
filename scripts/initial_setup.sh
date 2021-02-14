#!/usr/bin/env bash
#
# `bootstrap.sh` - first-run script to install basic tools

GREEN="\e[32m"
RED="\e[31m"
RESET="\e[39m"

function info {
    echo -e "${GREEN}[INFO] $@${RESET}"
}

function error {
    echo -e "${RED}[ERROR] $@${RESET}"
}

if [ "$(id -u)" != "0" ]; then
    error "Run this script as 'root'."
    exit 1
fi

info "Updating packages..."
apt-get update -y

info "Upgrading packages..."
apt-get upgrade -y

info "Installing Git..."
apt-get install git -y

info "Installing fish..."
apt-get install fish -y
