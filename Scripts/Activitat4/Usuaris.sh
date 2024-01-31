#!/bin/bash


echo -e "Aquests són tots els usuaris del sistema: \n"

cat /etc/passwd

echo -e "\n\n Vols crear un usuari?: \n"

read RES

if [ "$RES" = "Y" ] || [ "$RES" = "y" ]
then
	echo -e "Digues el nom del usuari: \n"
	read NOM

	#Has de comentar el codi recorda de les activitats anteriors!!!!
