#!/bin/sh

echo "Mise à jour de Linux..."
apt update -y
apt install screen -y
apt install -y tar xz-utils curl git file
echo "Mise à jour terminée."

mkdir -p /home/server/resources
cd /home/server

echo "updating citizenfx resource files"
git clone https://github.com/citizenfx/cfx-server-data.git /tmp
cp -Rf /tmp/resources/* resources/ 

RELEASE_PAGE=$(curl -sSL https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/)

if [ "${FIVEM_VERSION}" == "latest" ] || [ -z ${FIVEM_VERSION} ] ; then
    LATEST_RECOMMENDED=$(echo -e "${RELEASE_PAGE}" | grep "LATEST RECOMMENDED" -B1 | grep -Eo 'href=".*/*.tar.xz"' | grep -Eo '".*"' | sed 's/\"//g' | sed 's/\.\///1')
    DOWNLOAD_LINK=$(echo https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${LATEST_RECOMMENDED})
else
    VERSION_LINK=$(echo -e "${RELEASE_PAGE}" | grep -Eo 'href=".*/*.tar.xz"' | grep -Eo '".*"' | sed 's/\"//g' | sed 's/\.\///1' | grep ${FIVEM_VERSION})
    if [ "${VERSION_LINK}" == "" ]; then
        echo -e "defaulting to latest as the version requested was invalid."
    else
        DOWNLOAD_LINK=$(echo https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${VERSION_LINK})
    fi
fi

if [ ! -z "${DOWNLOAD_URL}" ]; then 
    if curl --output /dev/null --silent --head --fail ${DOWNLOAD_URL}; then
        echo -e "link is valid. setting download link to ${DOWNLOAD_URL}"
        DOWNLOAD_LINK=${DOWNLOAD_URL}
    else
        echo -e "link is invalid closing out"
        exit 2
    fi
fi

echo -e "Running curl -sSL ${DOWNLOAD_LINK} -o ${DOWNLOAD_LINK##*/}"

curl -sSL ${DOWNLOAD_LINK} -o ${DOWNLOAD_LINK##*/}

echo "Extracting fivem files"

FILETYPE=$(file -F ',' ${DOWNLOAD_LINK##*/} | cut -d',' -f2 | cut -d' ' -f2)
if [ "$FILETYPE" == "gzip" ]; then
    tar xzvf ${DOWNLOAD_LINK##*/}
elif [ "$FILETYPE" == "Zip" ]; then
    unzip ${DOWNLOAD_LINK##*/}
elif [ "$FILETYPE" == "XZ" ]; then
    tar xvf ${DOWNLOAD_LINK##*/}
else
    echo -e "unknown filetype. Exiting"
    exit 2 
fi

rm -rf ${DOWNLOAD_LINK##*/} run.sh

if [ -e server.cfg ]; then
    echo "server config file exists"
else
    echo "Downloading default fivem config"
    curl https://raw.githubusercontent.com/parkervcp/eggs/master/gta/fivem/server.cfg >> server.cfg
fi

mkdir logs/


echo "Prenez le code FiveM et faites CTRL + A + D"
sleep 3 
screen -R fivem ./run.sh

echo "Installation Apache2"
apt update -y
apt install sudo -y
apt install apache2 apache2-doc -y
apt install unzip -y
echo "Installation Apache2 effectuée"


echo "Installation PHP 7.2"
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt-get install ca-certificates apt-transport-https -y

sleep 3 

sudo apt-get update
sudo apt-get install php7.2 php7.2-cli php7.2-common php7.2-opcache php7.2-curl php7.2-mbstring php7.2-mysql php7.2-zip php7.2-xml -y

sleep 3

echo "Installation phpMyadmin"
cd /var/www/html
mkdir phpmyadmin
cd /var/www/phpmyadmin/

wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip
unzip phpMyAdmin-5.0.2-all-languages.zip
mv phpMyAdmin-5.0.2-all-languages/* /var/www/html/phpmyadmin
rm -rf phpM*
echo "Installation phpMyadmin terminée"

sleep 3 

apt-get install mysql-server -y

rm -f /root/recipe1.sh

echo "Installation complète"
