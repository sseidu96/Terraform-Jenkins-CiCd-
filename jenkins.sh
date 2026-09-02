#!/bin/bash

# Update packages
apt update -y

# Install Java 21 and wget
apt install -y openjdk-21-jre wget

# Set Java 21 as the default
update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java

# Add Jenkins repository key
wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

# Add Jenkins repository
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/" \
> /etc/apt/sources.list.d/jenkins.list

# Update package list
apt update -y

# Install Jenkins
apt install -y jenkins

# Enable Jenkins
systemctl enable jenkins

# Start Jenkins
systemctl start jenkins