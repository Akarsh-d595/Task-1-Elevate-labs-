# Mounting SMB (Windows share) — authorized usage only

## Linux (mount.cifs)
Install cifs utils:
  - Debian/Ubuntu: sudo apt install cifs-utils

Example mount:
sudo mkdir -p /mnt/target_share
sudo mount -t cifs //192.168.29.207/shared /mnt/target_share -o username=USER,password=PASSWORD,vers=3.0

## Windows (net use)
Open PowerShell or CMD as admin:
  net use Z: \\192.168.29.207\shared /USER:DOMAIN\username password

Replace shared, username, and password with valid values. Do not use these commands without permission.
