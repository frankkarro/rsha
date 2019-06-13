#!/bin/bash -e
clear
echo "WP Paigaldamine"
echo "Andmebaasi nimi: "
read -e dbname
echo "Andmebaasi kasutaja: "
read -e dbuser
echo "Andmebaasi kasutaja parool: "
read -s dbpass
echo "Alusta paigaldust? (y/n)"
read -e run
if [ "$run" == n ] ; then
exit
else
echo "WordPressi paigaldatakse."
# laeb alla ja pakib lahti wordpressi"
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -zxvf latest.tar.gz

cd wordpress
cp -rf . ..
cd ..
rm -R wordpress
cp wp-config-sample.php wp-config.php
perl -pi -e "s/database_name_here/$dbname/g" wp-config.php
perl -pi -e "s/username_here/$dbuser/g" wp-config.php
perl -pi -e "s/password_here/$dbpass/g" wp-config.php

mkdir wp-content/uploads
chmod 775 wp-content/uploads
chmod 775 ../*
echo "Üleliigsete asjade kustutamine"
rm latest.tar.gz
echo "WordPress on paigaldatud"
fi

