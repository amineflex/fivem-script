echo "========================="
echo "0 - Script par CroHosting"
echo "========================="

echo -n  "  IP de votre VPS :"
read ip
echo "  Votre ip est ".$ip

# Mettre à jour Ubuntu/Debian
echo "========================="
echo "1 - Mise à jour de Linux"
echo "========================="

apt update
apt full-upgrade -y
apt install wget sudo bash curl git nano

# Installation serveur Web
echo "========================="
echo "2 - Installation Nginx"
echo "========================="

apt install nginx -y

# Installation SQL
echo "========================="
echo "3 - Installation MariaDB"
echo "========================="

apt install mariadb-server
systemctl status mariadb
apt install software-properties-common dirmngr
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirrors.dotsrc.org/mariadb/repo/10.3/debian stretch main'
sudo mysql_secure_installation

echo "  Création d'un compte MYSQL"
mysql -u root -p

CREATE USER 'admin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'azerty';
CREATE DATABASE fivem_crohosting;
GRANT ALL ON panel.* TO 'admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit;

# Installation phpmyadmin
echo "========================="
echo "4 - Installation de PMA"
echo "========================="

cd /var/www/html
mkdir pma
cd pma
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip
unzip phpMyAdmin-5.0.2-all-languages.zip
mv phpMyAdmin-5.0.2-all-languages/* /var/www/html/
rm -rf phpM*
echo "Votre PHPMyAdmin est installé ici : http://". $ip."/pma ";

# Installation FiveM
echo "========================="
echo "5 - Installation de FiveM"
echo "========================="



