#!/bin/bash

# Clean apt cache
echo "Cleaning apt cache..."
sudo apt clean

# Remove old versions of snap packages
echo "Removing old versions of snap packages..."
sudo snap refresh

# Remove old versions of flatpak packages
echo "Removing old versions of flatpak packages..."
flatpak uninstall --unused -y

# Clean up temporary files
echo "Cleaning up temporary files..."
sudo rm -rf /tmp/*

# Remove old logs
echo "Removing old log files..."
sudo find /var/log -type f -name "*.log*" -delete

# Empty trash
echo "Emptying trash..."
rm -rf ~/.local/share/Trash/*

echo "Disk cleanup completed."
