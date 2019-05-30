Ülesanne:
Koosta skript, mis küsib sisendiks kasutajanime ning peale selle sisestamist loob antud sisendiga kasutaja 
ning lisab antud kasutajale kodukataloogi (/home/#kasutajanimi). Kodukataloogis peavad tekkima kindlasti vajalik struktuur peidetud failidest.

Kui skript on valmis tuleb skriptile käivtamiseks anda õigused ning kontrollida selle töötamist.
Selleks:
chmod +x "skript"
sh "skript" "kasutajanimi"
cat /etc/passwd | grep "kasutajanimi"
cat /etc/shadow | grep "kasutajanimi"

SKRIPT create user

#!/bin/bash 
echo -n "Enter an username:" #annan kasutajalse sisendi koos teatega
read username #loen mis kasutaja andis sisendiks
useradd -s /bin/bash -m -d /home/$username "$username" #sisendist saadud infoga loon kasutaja koos skeletiga
echo "Done!" #väljastan teate
