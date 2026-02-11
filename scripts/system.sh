#!/bin/bash
# Script: device_info.sh
# Purpose: Show basic system information

echo "=============================="
echo "    Device Information"
echo "=============================="

# Hostname
echo "Hostname: $(hostname)"

# OS info
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "OS: macOS $(sw_vers -productVersion)"
else
    echo "OS: $(uname -s) $(uname -r)"
fi

# Uptime
echo "Uptime: $(uptime)"

# CPU info
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "CPU: $(sysctl -n machdep.cpu.brand_string)"
else
    echo "CPU: $(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)"
fi

# RAM info
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "RAM: $(sysctl -n hw.memsize | awk '{print $1/1024/1024/1024 " GB"}')"
else
    echo "RAM: $(free -h | grep Mem | awk '{print $2}')"
fi

# Disk usage
echo "Disk usage:"
df -h | grep -E '^/dev/'

# Logged-in user
echo "Current user: $(whoami)"

# IP address
echo "IP address: $(hostname -I 2>/dev/null || ipconfig getifaddr en0 2>/dev/null || echo 'N/A')"

echo "=============================="


