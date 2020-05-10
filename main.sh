#!/bin/sh

echo "Create Swap - 4GB"
swapon --show && free -h && df -h && fallocate -l 4G /swapfile && ls -lh /swapfile && chmod 600 /swapfile && ls -lh /swapfile && mkswap /swapfile && swapon /swapfile && swapon --show && free -h && cp /etc/fstab /etc/fstab.bak && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab 
