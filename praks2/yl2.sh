Loo skript mis võtab sisendina kasutajanimed eraldi failist ning selle alusel loob süsteemi paroolita kasutajad.

Skript:
#!/bin/bash
#skript lisamaks kasutajaid failist
for a in $(cat /home/frank/skriptid/praks3/newusers.lst) #annan ette faili mida töödelda
do 
    sudo useradd -m -s /bin/bash $a  #lisan kasutaja koos skeletiga
    echo "$a added to the system" #annan teate töö lõpetamisest
done
