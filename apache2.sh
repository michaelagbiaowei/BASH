#!/usr/bin/env bash

# Step 1:
# Upadte and install apache2 using the Advanced Packaging Tool
sudo apt install apache2 -y

# Step 2:
# Print apache2 version
apache2 --version

# Step 3:
# Enable apache2 server
sudo systemctl enable apache2

# Step 4:
# Start apache2 server
sudo systemctl start apache2

# Step 5:
# Print apache2 status
sudo systemctl status apache2


