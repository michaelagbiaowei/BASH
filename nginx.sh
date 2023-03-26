#!/usr/bin/env bash

# Step 1:
# Update server
sudo apt update

# Step 2:
# Install nginx server
sudo apt install nginx -y

# Step 3:
# Enable nginx server
sudo systemctl enable nginx

# Step 4:
# Start nginx server
sudo systemctl start nginx server

# Step 5:
# Confirm status of nginx server
sudo systemctl status nginx