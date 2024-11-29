#!/bin/bash

# Update package list and install prerequisites
echo "Updating package list and installing prerequisites..."
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl build-essential libssl-dev

# Install NVM (Node Version Manager)
echo "Installing NVM..."
export NVM_DIR="$HOME/.nvm"
if [ ! -d "$NVM_DIR" ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
else
    echo "NVM is already installed."
fi

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install latest Node.js and NPM
echo "Installing the latest version of Node.js..."
nvm install node
nvm alias default node

# Verify installation
echo "Verifying installations..."
echo "Node.js version: $(node -v)"
echo "NPM version: $(npm -v)"

echo "Installation completed successfully!"
