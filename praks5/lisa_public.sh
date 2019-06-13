#!/bin/bash
#kui pole kasutajanime skripti järel siis annab süntaksi skripti jooksutamisekes
if [ $# -ne 1 ]; then
        echo "Kasutusjuhend: $0 kasutajanimi"
else    #kui kasutajat pole eelnevalt süsteemis olemas siis loob uue kasutaja (kasutajanimi:qwerty) paroolida
        #teeb kasutajale skeletoni ning määrab public kausta õigused
        kasutajanimi=$1
        useradd $kasutajanimi -d /home/$kasutajanimi/ -s /bin/bash -p qwerty
        mkdir -p /home/$kasutajanimi/public && chown -R $kasutajanimi:$kasutajanimi /home/$kasutajanimi/public && chmod 751 /home/$

        if [ $? -eq 0 ]; then   #vigadeta töö korral väljastab:
                echo "Kasutaja $kasutajanimi  kodukaustas loodud kaust public"
                cat /etc/passwd | grep $kasutajanimi #kontrollib kasutaja olemasolu passwd failis
        else
                echo "probleem kasutaja $kasutajanimi lisamisega" #veateade
                echo "probleemi kood on $?" #veateate tunnus
        fi
fi
