#!/usr/bin/env bash

# Step 1:
# Install CloudWatch agent package
sudo yum install amazon-cloudwatch-agent

# Step 2:
# Install the CloudWatch agent
wget https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/arm64/latest/amazon-cloudwatch-agent.rpm

# Step 3:
# Change to the directory containing the package
sudo rpm -U ./amazon-cloudwatch-agent.rpm

# Step 4:
# Start the CloudWatch agent configuration wizard
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard

# Step 5:
# Start the Clo
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/var/log/messages # Edit the configuration-file-path to where itis stored
