#!/bin/bash
#
#
phpmyadmin=$(dpkg-query -W -f='${Status}' phpmyadmin 2>/dev/null | grep -c "ok installed")
if [ $phpmyadmin -eq 0 ]
then
        echo "phpmyadmin paigaldus"
        sleep 1
        apt install phpmyadmin -y

elif [ $phpmyadmin -eq 1 ]
then
        echo "phpmyadmin on paigaldatud"
        sleep 1
        dpkg --list | grep phpmyadmin
fi
