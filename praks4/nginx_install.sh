#!/bin/bash
nginx=$(dpkg-query -W -f='${Status}' nginx 2>/dev/null | grep -c "ok installed")
if [ $nginx -eq 0 ]
then
        echo "Nginx paigaldus"
        apt-add-repository ppa:nginx/development -y
        apt-add-repository ppa:ondrej/php -y
        apt install nginx-full -y
        apt install nginx -y


elif [ $nginx -eq 1 ]
then
        echo "Nginx on paigaldatud"
        pause
        systemctl status nginx
fi
