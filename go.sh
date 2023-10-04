#!/usr/bin/env bash

# Step 1:
# Set the Go version you want to install
GO_VERSION="1.17.3"

# Step 2:
# Define the download URL for the Go binary (64-bit Linux)
GO_URL="https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz"

# Step 3:
# Define the installation directory
INSTALL_DIR="/usr/local"

# Step 4:
# Download and extract Go
wget "$GO_URL" -O /tmp/go.tar.gz
sudo tar -C "$INSTALL_DIR" -xzf /tmp/go.tar.gz
rm /tmp/go.tar.gz

# Step 5:
# Set environment variables in the user's profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> "$HOME/.profile"
echo 'export GOPATH=$HOME/go' >> "$HOME/.profile"
echo 'export PATH=$PATH:$GOPATH/bin' >> "$HOME/.profile"

# Step 5:
# Source the profile to apply changes immediately
source "$HOME/.profile"

# Step 7:
# Verify the installation
go version
