sudo echo "" | sudo tee -a  /etc/sudoers
sudo echo "# Add comand poweroff to user" | sudo tee -a  /etc/sudoers
echo "$USER ALL=(ALL) NOPASSWD: /sbin/poweroff" | sudo tee -a /etc/sudoers

sudo echo "" | sudo tee -a  /etc/sudoers
sudo echo "# Add comand reboot to user" | sudo tee -a  /etc/sudoers
echo "$USER ALL=(ALL) NOPASSWD: /sbin/reboot" | sudo tee -a /etc/sudoers
