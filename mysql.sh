#!/usr/bin/env bash

# Step 1:
# Update apt
sudo apt update

# Step 2:  
# Install wget utility if not present
sudo apt install wget -y

#Step 3:
# Install required packages for mysql
sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.20-1_all.deb
sudo apt install ./mysql-apt-config_*_all.deb
sudo apt update

# ## NOTE: if error occurs... Confirm your PUBLIC_KEY from your ERROR MESSEGAE ...and run the following commands
# sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 467B942D3A79BD29
# sudo apt update && sudo apt upgrade -y

# Step 4:
# Install mysql-server
sudo apt install mysql-server

# Step 5:
# Confirm instaled version
mysql --version

# Step 6:
# Enable and confirm status of mysql
sudo systemctl enable --now mysql
sudo systemctl status mysql
