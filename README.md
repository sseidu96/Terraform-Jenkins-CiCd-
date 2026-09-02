# Terraform Jenkins CI/CD

This project uses **Terraform** to provision an AWS EC2 Ubuntu server and automatically install and configure **Jenkins** for CI/CD automation.

## 🚀 Project Overview

The goal of this project is to demonstrate how Infrastructure as Code (IaC) can be used to create a Jenkins server in AWS automatically.

Terraform provisions the infrastructure, while a Bash script installs the required packages and Jenkins on the EC2 instance.

## 🛠️ Technologies Used

- AWS EC2
- Terraform
- Jenkins
- Java 21
- Ubuntu Linux
- Bash Scripting
- Git
- GitHub
- AWS Security Groups
- SSH

## 📁 Project Structure

```text
JENKINS-CI-CD/
│
├── main.tf
├── provider.tf
├── version.tf
├── keypair.tf
├── security-group.tf
├── output.tf
├── jenkins.sh
├── .gitignore
└── README.md