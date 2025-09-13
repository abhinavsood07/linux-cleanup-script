#!/bin/bash

# =========================================
# Linux Update & Cleanup Automation Script
# =========================================

# Log file
LOG_FILE="$HOME/update_cleanup.log"

echo "========== $(date '+%Y-%m-%d %H:%M:%S') ==========" >> "$LOG_FILE"

# Function to display messages and log
log() {
    echo -e "$1"
    echo -e "$1" >> "$LOG_FILE"
}

# 1. Update system packages
log "\n[INFO] Updating package lists..."
sudo apt update >> "$LOG_FILE" 2>&1

log "[INFO] Upgrading installed packages..."
sudo apt upgrade -y >> "$LOG_FILE" 2>&1

# 2. Remove unnecessary packages
log "[INFO] Removing unnecessary packages..."
sudo apt autoremove -y >> "$LOG_FILE" 2>&1

# 3. Clean package cache
log "[INFO] Cleaning package cache..."
sudo apt autoclean -y >> "$LOG_FILE" 2>&1

# 4. Clean temporary files
log "[INFO] Cleaning temporary files..."
rm -rf /tmp/* >> "$LOG_FILE" 2>&1
rm -rf /var/tmp/* >> "$LOG_FILE" 2>&1

# 5. Clean user cache and Trash
log "[INFO] Cleaning user cache..."
rm -rf ~/.cache/* >> "$LOG_FILE" 2>&1

log "[INFO] Emptying Trash..."
rm -rf ~/.local/share/Trash/* >> "$LOG_FILE" 2>&1

# 6. Optional: Notify user when done
if command -v notify-send &> /dev/null
then
    notify-send "Linux Cleanup Script" "Update and cleanup completed successfully!"
fi

log "[INFO] Update and cleanup completed!\n"
echo "==============================================" >> "$LOG_FILE"

