#!/usr/bin/env bash 

# Step 1:
# Import the public GPG key for the latest stable version of MongoDB
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

# Step 2#
# To double check that the key was added correctly
apt-key list

# Step 3:
# Create a file in the sources.list.d directory named mongodb-org-4.4.list
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

# Step 4:
# Update the server’s local package index
sudo apt update

# Step 5:
# Install libssl1.1 dependency
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb 
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb

# Step 6:
# Install mongodb
sudo apt install mongodb-org -y

# Step 7:
# Start mongod service
sudo systemctl start mongod.service

# Step 8:
# Confirm he  running status of mongod serivce
sudo systemctl status mongod
