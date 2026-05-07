#!/bin/bash

# Lab Setup Script for Linux Fundamentals
echo "🚀 Setting up your Linux Lab environment..."

# Create a clean practice directory
LAB_DIR="linux-lab-playground"
mkdir -p $LAB_DIR
cd $LAB_DIR

# 1. Create a "messy" directory structure
mkdir -p projects/web-app logs backups configs

# 2. Create some files with content
echo "config_v1" > configs/app.conf
echo "First log entry" > logs/access.log
echo "Temporary data" > /tmp/devops_temp_$(date +%s)

# 3. Create a file with "wrong" permissions for you to fix later
touch secrets.txt
chmod 000 secrets.txt

# 4. Create a hidden file
touch .env_file

echo "✅ Lab environment created in: $(pwd)"
echo "Next steps:"
echo "1. Change into the directory: cd $LAB_DIR"
echo "2. Follow the exercises in the README.md"
