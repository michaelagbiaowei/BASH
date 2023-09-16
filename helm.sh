#!/usr/bin/env bash
# The above line specifies the interpreter to be used for this script, which is 'bash'.

# Download Helm installation script from Helm GitHub repository and save it as 'get_helm.sh'.
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

# Make the 'get_helm.sh' script executable (chmod 700 sets read, write, and execute permissions for the owner).
chmod 700 get_helm.sh

# Execute the 'get_helm.sh' script, which installs Helm on your system.
./get_helm.sh
