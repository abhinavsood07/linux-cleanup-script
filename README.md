# Linux Cleanup & Update Script

A simple Bash script to automate basic Linux system maintenance, including system updates, package cleanup, and removing temporary files.

---

## Features
- Update package lists and upgrade installed packages
- Remove unnecessary packages
- Clean package cache
- Clean temporary files (`/tmp`, `/var/tmp`)
- Clean user cache and Trash
- Logs all actions with timestamps

---
## Usage

Follow these steps to download and run the script:

###  Download the repository using Git
```bash
# Install Git if you don't have it
sudo apt update
sudo apt install git -y

# Clone the repository
git clone https://github.com/abhinavsood07/linux-cleanup-script.git

# Go into the project folder
cd linux-cleanup-script

# Make the script executable
chmod +x update_cleanup.sh

# Run the script
./update_cleanup.sh


# You may need to enter your password for system updates.

# The script will automatically perform system update and cleanup tasks.
```
---


## Running the Script Afterwards 
- Once the repository is cloned, you don’t need to run Git commands again.
- Simply navigate to the project folder and run:
```bash
cd ~/linux-cleanup-script
./update_cleanup.sh


