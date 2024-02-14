#!/bin/bash


echo -e "Aquests són tots els usuaris del sistema: \n"

cat /etc/passwd

echo -e "\n\n Què vols fer? Si vols crear un usuari prem \"Y\" \n"
echo -e "En canvi si vols eliminar un usuari prem \"X\"\n"
echo -e "Per últim però no menys important, si vols modificar els atributs d'un usuari existent prem \"M\"\n"


read RES

if [ "$RES" == "Y" ] || [ "$RES" == "y" ]
then
	echo -e "Digues el nom del usuari: \n"
	read NOM
	echo -e "Digues si vols pertanyer a algún grup: \n"
	read GROUP
	echo -e "Digues quin vols que sigui el directori home l'usuari: \n"
	read HOMESITA

	adduser $NOM --home $HOMESITA --ingroup $GROUP

fi

if [ "$RES" == "X" ] || [ "RES" == "x" ]
then 
	echo -e "Digues el nom de l'usuari que vols eliminar: "
	read NOM
	userdel $NOM
fi


if [ "$RES" == "M" ] || [ "$RES" == "m" ]
then 
	echo -e "Què vols cambiar? \n"
	echo -e "Si vols cambiar el nom, prem: N"
	echo -e "Si vols cambiar el home, prem: H"
	echo -e "Si vols cambiar el grup, prem: G"
	read REZ

	if [ "$REZ" == "N" ] || [ "$REZ" == "n" ]
	then
		echo -e  "introdueix el nom del usuari al que li vols cambar: "
		read ON
		echo -e "Molt bé petitonet!!!! ara fes-me el puto favor d'introduirme el nou putu nom que vols que li posi: "
		read NN	
		usermod -l $NN $ON	
	fi
	if [ "$REZ" == "H" ] || [ "$REZ" == "h" ]
	then 
		echo "introdueix el directori home al que vols que canvii: "
		read NH
		echo "introdueix el nom del usuari que vols aplicar auqest canvi: "
		read US
		usermod -d $NH $US
	fi
	if [ "$REZ" == "G" ] || [ "$REZ" == "g" ]
	then
		echo "introdueix el grup nou: "
		read NG
		echo "introdueix el nom del usuari al qual vols aplicar els canvis: "
		read SU
		usermod -g $NG $SU
	fi	
fi




#Has de comentar el codi recorda de les activitats anteriors!!!!
