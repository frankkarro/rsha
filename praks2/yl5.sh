#!/bin/bash

if [ $# -ne 1  ]; then  #kontrollib kas faili järele on pandud midagi veel
        echo "Kasutusjuhend: $0 userpasswd.sh" 
        else
                userpasswd.sh=$0
                if [ -f $failinimi -a -r $failinimi ]; then
                echo "Fail on korras"
                fi
fi

for rida in $(cat /home/frank/skriptid/praks3/newusers.lst)
do
        kasutajanimi=$(echo $rida | cut -f1 -d:)
        sudo useradd -m -s /bin/bash $kasutajanimi
        sleep 1
        echo "Kasutaja $kasutajanimi loodud"
        echo "Muudan parooli:"
        sudo echo "$rida" | chpasswd
        sleep 1
        echo "kasutaja $kasutajanimi parool vahetatud"
        echo "kasutaja loodud, parool vahetatud."
done
