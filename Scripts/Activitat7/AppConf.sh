#!/bin/bash


echo -e "Hola! que tal? em diuen pel pinganillo que et vols instal·lar/desinstal·lar  una aplicació? Mooolt béee!!! anem a instal·lar/desinstal·lar! \nSi vols instal·lar una applicació, prem 'I'\nEn canvi, si vols desinstal·lar una aplicació prem 'D':i\n\nNOTA: make sure you opened that shit up with the fuking super user on, you feel me?"
read RES




if [ "$RES" == "I" ] || [ "$RES" == "i" ]
then

	echo "Quina aplicació vols instal·lar?: "

	read APP

	apt-get -y  install $APP

else 
	echo "resposta invàlida tiu espavila"
fi

if [ "$RES" == "D" ] || [ "$RES" == "d" ]
then

	echo "Quina aplicació vls desinstal·lar?: "
	read APPUNINSTALL

	apt remove $APPUNINSTALL
else 
	echo "que collons vols que fagi amb la merda de resposta que m'has donat, posat les piles i ficali ganes perque sino et desinstalo la cara de panoli que em portes."
fi



