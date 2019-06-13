#!/bin/bash
#
#Vaatab kodukataloogidesse ja otsib public kausta"
for kasutaja in $(ls /home)
do
ls /home/$kasutaja | grep public > /dev/null

#kausta puudumise korral
if [  $? -eq 1 ];
        then     # siis loob kausta ja määrab õigused
        mkdir -p /home/$kasutaja/public && chown -R $kasutaja:$kasutaja /home/$kasutaja/public && chmod 751 /home/$kasutaja/public

                #kui kausto olemas siis näitab sisu
                echo "kasutaja nimega $kasutaja kodukaustas on kaust nimega public juba loodud"
                ls -la /home/$kasutaja
        else
                echo "probleem kasutaja $kasutaja lisamisega" #kui kasutajat ei saa lisada"
                echo "probleemi kood on $?"   # ning väljastab errorcode
        fi
        else
        echo "kasutaja nimega $kasutaja kodukaustas on public kaust olemas"
fi
done
