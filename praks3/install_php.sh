#!/bin/bash
#
#
php=$(dpkg-query -W -f='${Status}' php 2>/dev/null | grep -c "ok installed") #kontrollib kas on olemas
if [ $php -eq 0 ] # kui ei ole, siis paigaldab vajalikud paketid
then
        echo "PHP paigaldus"
        apt install -y dirmngr
        apt install ca-certificates lsb-release -y
        apt --force-yes install apt-transport-https --allow-unauthenticated -y
        apt --force-yes install software-properties-common --allow-unauthenticated -y
        echo "deb https://packages.sury.org/php/ jessie main" > /etc/apt/sources.list.d/php.list
        add-apt-repository ppa:ondrej/php -y
        apt-key update
        apt update
        apt install php7.0 php-pear libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-json php7.0-cgi -y
elif [ $php -eq 1 ]
then
        echo "PHP on paigaldatud"
        pause
        systemctl status php
fi
