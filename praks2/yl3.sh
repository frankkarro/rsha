Loo skript, mis loob uuesd kasutajad ja määrab neile paroolid failist.

#!/bin/bash
for rida in $(cat /home/frank/skriptid/praks3/newusers.lst) #annan ette faili koos kasutajatega
do
        kasutajanimi=$(echo $rida | cut -f1 -d:) #määran kuidas saadakse kasutajanimi
        sudo useradd -m -s /bin/bash $kasutajanimi #lisan kasutaja
        sleep 1 #ootan 1 sekunid
        echo "Kasutaja $kasutaja nimi loodud" #väljastan teksti
        echo "Muudan parooli:" #väljastan teksti
        sudo echo "$rida" | chpasswd #muudan parooli
        sleep 1 #ootan 1 sekund
        echo "kasutaja $kasutajanimi parool vahetatud" #väljastan teksti
        echo "kasutaja loodud, parool vahetatud." #Väljastan teksti
done
