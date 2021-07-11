#!/bin/sh
#
#By VPSLabs

echo "Installation phpMyAdmin | Par Amine B.";
echo "";
sleep 1

echo "Installation MariaDB";
apt install mariadb-server -y

echo "Installation Apache2";
apt install sudo -y
apt install apache2 apache2-doc -y
apt install unzip -y
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt-get install ca-certificates apt-transport-https -y
sleep 1

echo "Installation php";
sudo apt-get update
sudo apt-get install php7.2 php7.2-cli php7.2-common php7.2-opcache php7.2-curl php7.2-mbstring php7.2-mysql php7.2-zip php7.2-xml -y

sleep 3
echo "Installation phpMyAdmin";
cd /var/www/html/
mkdir phpmyadmin
cd phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.1.1/phpMyAdmin-5.1.1-all-languages.zip
unzip phpMyAdmin-5.1.1-all-languages.zip
mv phpMyAdmin-5.1.1-all-languages.zip/* /var/www/html/phpmyadmin
rm -rf phpM*
echo "Installation terminé | vpslabs.fr";
