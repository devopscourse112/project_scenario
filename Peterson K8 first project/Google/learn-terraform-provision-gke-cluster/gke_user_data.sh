#!/bin/bash

# Format the persistent disk
parted /dev/sda mklabel gpt
parted /dev/sda mkpart primary ext4 1 100%
mkfs.ext4 /dev/sda1

# Mount the persistent disk (replace /mnt with your desired mount point)
mount /dev/sda1 /mnt

# ... (Optional) Install packages, configure services, etc. on /mnt

echo "/dev/sda1 / ext4 defaults 0 0" >> /etc/fstab  # Adjust mount options if needed

# Reboot the system to ensure changes take effect
reboot
