#!/usr/bin/env bash

# Step 1:
# Create the file repository configuration
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Step 2:
# Import the repository signing key
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Step 3:
# Update the package lists
sudo apt-get update

# Step 4:
# Install the latest version of PostgreSQL
# If you want a specific version, use 'postgresql-15' or similar instead of 'postgresql'

sudo apt -y install postgresql-15

# Step 5:
# Confirm installed version
psql --version

# Step 6:
# Confirm the status of postgres
sudo systemctl status postgresql