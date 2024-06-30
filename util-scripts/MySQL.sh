sudo apt install mysql-server && sudo apt install wget && wget https://dev.mysql.com/get/mysql-apt-config_0.8.29-1_all.deb && sudo apt install ./mysql-apt-config_0.8.29-1_all.deb
sudo apt update
sudo apt upgrade
sudo apt install mysql-server
sudo service mysql status

#in mysql
#ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'; 

# DBeaver database manager
#wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
#sudo apt install ./dbeaver-ce_latest_amd64.deb

# MariaDB database manager CLI
#sudo apt install mariadb-server
#sudo mysql_secure_installation

# Prompt
#mysql -u root -p # Local access
#mysql -u root -p --prompt="   󰔰  " # Local access and modify the prompt
#sudo mysql --prompt="   󰔰  "
