#!/bin/bash

# ASCII Art Banner
echo "  ____  _   _    _    ____  _____   ___ _____   _   _ _   _ ____  "
echo " / ___|| | | |  / \  |  _ \| ____| |_ _|_   _| | | | | | |   __ ) "
echo " \___ \| |_| | / _ \ | |_) |  _|    | |  | |   | |_| | | | |  _ \ "
echo "  ___) |  _  |/ ___ \|  _ <| |___   | |  | |   |  _  | |_| | |_) |"
echo " |____/|_| |_/_/   \_\_| \_\_____| |___| |_|   |_| |_|\___/|____/ "
echo "                                                                   "

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Install necessary packages
sudo apt install -y curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip protobuf-compiler screen

# Install Rust
sudo curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

# Update Rust
rustup update

sudo apt install -y protobuf-compiler

# Install Nexus CLI
sudo curl https://cli.nexus.xyz/install.sh | sh

# Instructions for getting prover-id
echo "Instructions:"
echo "1. Open the Nexus beta website and inspect the local storage."
echo "2. Find 'flutter.proverid' to retrieve your prover ID."
echo "3. If there is an error related to the prover ID during runtime, press CTRL+C and follow these steps:"
echo "   a. Navigate to the .nexus directory: cd .nexus/"
echo "   b. Open 'prover-id' with nano: nano prover-id"
echo "   c. Replace the existing prover ID with the one you retrieved and save the changes (CTRL+X, then CTRL+Y, then Enter)."

# Running Nexus CLI again
sudo curl https://cli.nexus.xyz/install.sh | sh

# Instructions for managing screen sessions
echo "To exit the screen session: Press CTRL+A followed by D."
echo "To reattach to the screen session: screen -r nexus."
