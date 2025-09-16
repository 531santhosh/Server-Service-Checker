#!/bin/bash

# Ask the user for the IP address or hostname
read -p "Enter IP address or hostname: " ip

# Ping the IP/hostname once and suppress output
if ping -c 1 -W 2 "$ip" &> /dev/null
then
    echo "✅ $ip is UP (reachable)."
else
    echo "❌ $ip is DOWN (unreachable)."
fi

