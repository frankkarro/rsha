#!/bin/bash
#
#
echo"LEMP STACK PAIGALDAMISE ALUSTAMINE"
sleep 2
echo"KEELAN APACHE2 TEENUSE"
systemctl disable apache2
echo"ALUSTAN INSTALLEERIMISEGA"
./nginx_install #paigaldab engineX webserveri
sleep 3
./install_php   #php paigaldus
sleep 3
./mysql_install #mysql paigaldus
sleep 3
./phpmyadmin_install    #phpmyadmin paigaldus
sleep 3
./wordpress_install     #wp paigaldus
echo"LEMP STACK PAIGALDATUD"
