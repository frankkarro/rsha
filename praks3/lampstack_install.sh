#!/bin/bash
echo "LAMP STACK PAIGALDAMINE"
./apache_install
sleep 3
./mysql_install
sleep 3
./install_php
sleep 3
./phpmyadmin_install
sleep 3
./wordpress_install
echo "LAMP STACK PAIGALDATUD"
