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

# --- ADVANCED ROCKETER SETUP ---
echo "🚀 Generating advanced lab data..."

# Create a messy log for Mission 6
cat <<EOF > logs/web_app.log
[INFO] Application started
[DEBUG] Connecting to database
[ERROR] Failed to connect to DB at 10.0.0.5
[INFO] Retrying connection...
[ERROR] Timeout reached!
[INFO] Falling back to secondary DB
EOF

# Create files of different sizes for Mission 7
dd if=/dev/zero of=projects/small_file.txt bs=1K count=10 2>/dev/null
dd if=/dev/zero of=projects/large_file.txt bs=1M count=2 2>/dev/null
dd if=/dev/zero of=projects/medium_file.txt bs=100K count=5 2>/dev/null

# Create scattered temp files for Mission 8
touch temp_1.tmp backups/old_data.tmp configs/test.tmp

echo "✅ Lab environment (Advanced) created in: $(pwd)"
echo "Next steps:"
echo "1. Change into the directory: cd $LAB_DIR"
echo "2. Follow the exercises in the README.md"
