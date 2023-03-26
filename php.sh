#!/usr/bin/env bash

# Step 1:
# Add the packages in sources lists
sudo apt update
sudo add-apt-repository ppa:ondrej/php -y

# Step 2:
# update package manager
sudo apt update

# Step 3:
# install php8.2
sudo apt install php8.2 -y

# Step 4:
# install php8.2 extensions and dependencies
sudo apt install php8.2 libapache2-mod-php php8.2-dev php8.2-zip php8.2-curl php8.2-mbstring php8.2-mysql php8.2-gd php8.2-xml php8.2-fpm -y

# Step 5:
# print php version
php -v