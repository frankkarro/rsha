#!/bin/bash
#
#
mysql=$(dpkg-query -W -f='${Status}' mysql 2>/dev/null | grep -c "ok installed")
if [ $mysql -eq 0 ]
then
        echo "mysql paigaldus"
        sleep 1
        apt install mysql-client mysql-server -y

elif [ $mysql -eq 1 ]
then
        echo "mysql on paigaldatud"
        sleep 1
        dpkg --list | grep mysql
fi
