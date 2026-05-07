#!/bin/bash

# Networking Verification Script
echo "🧐 Let's see how much of a detective you are..."
echo ""

# Question 1
read -p "1. What is the IP address you found for google.com? " IP_ADDR
if [[ $IP_ADDR =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "✅ Correct! That looks like a valid IPv4 address."
else
    echo "❌ That doesn't look like a valid IP address. Try 'dig +short google.com'"
fi

# Question 2
read -p "2. Which command did you use to check the HTTP headers? " CMD
if [[ $CMD == *"curl"* ]]; then
    echo "✅ Correct! 'curl' is the standard tool for this."
else
    echo "❌ Not quite. While other tools exist, 'curl -I' is the DevOps favorite."
fi

# Question 3
read -p "3. In Mission 4, what is the port number usually used for HTTP? " PORT
if [ "$PORT" == "80" ]; then
    echo "✅ Correct! HTTP uses port 80."
else
    echo "❌ Close! But HTTP is port 80 (HTTPS is 443)."
fi

echo ""
echo "----------------------------------------"
echo "Great job! You are starting to understand how the web is connected. 🌐"
