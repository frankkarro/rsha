Loo skript mis võtab sisendina kasutajanimed eraldi failist ning selle alusel loob süsteemi paroolita kasutajad.

Skript:
#!/bin/bash
#skript lisamaks kasutajaid failist
for a in $(cat /home/frank/skriptid/praks3/newusers.lst)
do
    echo "$a added to the system"
    sudo useradd -m -s /bin/bash $a
done
