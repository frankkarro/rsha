#!/bin/bash
echo -n "Sisesta kasutaja nimede faili nimi:" 
read $kasutaja
echo -n "Sisesta paroolidega faili nimi:"
read $parool
useradd -m $kasutaja
echo $kasutaja:$parool | chpasswd
