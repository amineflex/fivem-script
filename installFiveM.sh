#!/bin/sh
#
# Script d'installation - Serveur FiveM
# Par Adam - CroHosting
#
chmod 777 installFiveM.sh

apt update -y
apt install screen -y
apt install -y tar xz-utils curl git file

mkdir -p /home/server/resources
cd /home/server

echo "Mise à jour des fichiers CITIZENFX"
git clone https://github.com/citizenfx/cfx-server-data.git /cache
cp -Rf /cache/resources/* resources/ 

RELEASE_PAGE=$(curl -sSL https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/)

if [ "${FIVEM_VERSION}" == "latest" ] || [ -z ${FIVEM_VERSION} ] ; then
    LATEST_RECOMMENDED=$(echo -e "${RELEASE_PAGE}" | grep "LATEST RECOMMENDED" -B1 | grep -Eo 'href=".*/*.tar.xz"' | grep -Eo '".*"' | sed 's/\"//g' | sed 's/\.\///1')
    DOWNLOAD_LINK=$(echo https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${LATEST_RECOMMENDED})
else
    VERSION_LINK=$(echo -e "${RELEASE_PAGE}" | grep -Eo 'href=".*/*.tar.xz"' | grep -Eo '".*"' | sed 's/\"//g' | sed 's/\.\///1' | grep ${FIVEM_VERSION})
    if [ "${VERSION_LINK}" == "" ]; then
        echo -e "par défaut, car la version demandée n'était pas valable."
    else
        DOWNLOAD_LINK=$(echo https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${VERSION_LINK})
    fi
fi

if [ ! -z "${DOWNLOAD_URL}" ]; then 
    if curl --output /dev/null --silent --head --fail ${DOWNLOAD_URL}; then
        echo -e "Le lien est valide. Paramétrage du lien de téléchargement vers ${DOWNLOAD_URL}"
        DOWNLOAD_LINK=${DOWNLOAD_URL}
    else
        echo -e "le lien est invalide la fermeture"
        exit 2
    fi
fi

echo -e "Running curl -sSL ${DOWNLOAD_LINK} -o ${DOWNLOAD_LINK##*/}"

curl -sSL ${DOWNLOAD_LINK} -o ${DOWNLOAD_LINK##*/}

echo "Extraction des fichiers"

tar xvf ${DOWNLOAD_LINK##*/}
rm ${DOWNLOAD_LINK##*/}

if [ -e server.cfg ]; then
    echo "le fichier de configuration du serveur existe"
else
    echo "Téléchargement de la configuration par défaut de 5m"
    curl https://raw.githubusercontent.com/parkervcp/eggs/master/gta/fivem/server.cfg >> server.cfg
fi


mkdir logs/

screen -R fivem ./run.sh

apt update -y
apt install sudo -y
apt install apache2 apache2-doc -y
apt install unzip -y

wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt-get install ca-certificates apt-transport-https -y

sleep 3 

sudo apt-get update
sudo apt-get install php7.2 php7.2-cli php7.2-common php7.2-opcache php7.2-curl php7.2-mbstring php7.2-mysql php7.2-zip php7.2-xml -y

sleep 3

cd /var/www/html
mkdir phpmyadmin
cd /var/www/phpmyadmin/


wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip
unzip phpMyAdmin-5.0.2-all-languages.zip
mv phpMyAdmin-5.0.2-all-languages/* /var/www/html/phpmyadmin
rm -rf phpM*

sleep 3 

apt-get install mysql-server -y


echo "Installation complète"
rm -f /root/installFiveM.sh

