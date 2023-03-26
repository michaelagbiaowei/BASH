#!/usr/bin/env bash

# Step 1:
# Install node version manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Step 2:
# Activate nvm
. ~/.nvm/nvm.sh

# Step 3:
# Install the latest version of Node.js
nvm install --lts

# Step 4:
# Test that Node.js is installed and running
node -e "console.log('Running Node.js ' + process.version)"

echo -e "========\nadditional installation for ubuntu"

sudo apt update

sudo apt install nodejs -y

sudo apt install npm -y