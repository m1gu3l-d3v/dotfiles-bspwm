# Install swapfile
sudo fallocate -l 8G /swapfile # Allocate 8GB space for swapfile
sudo chmod 600 /swapfile # Change file permissions
sudo mkswap /swapfile # Create swap space in file
sudo swapon /swapfile # Activate swapfile
sudo sh -c 'echo "/swapfile swap swap defaults 0 0" >> /etc/fstab' # Add entry to /etc/fstab

# Uninstall swapfile
#sudo swapoff -v /swapfile # Deactivate swapfile
#sudo sed -i '/\/swapfile swap swap defaults 0 0/d' /etc/fstab # Remove swapfile entry
#sudo rm /swapfile # Delete swapfile
