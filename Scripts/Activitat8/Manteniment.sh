#!/bin/bash 

echo "Benvingut a la eina per dur a terme un maneniment òptim. Assegure't d'haver encès aquest programa amb su."

echo -e "\nAnem a netejar caché i arxius temporals"

sync
echo -e "\nVols borrar la caché de la memoria ram?(Això pot afectar el rendiment del dispositiu ja que haurà de llegir directament del disc un altre cop) 'S'/'N':"
read RES

if [ "$RES" == "S" ] 
then

sudo sh -c 'echo 3 > /proc/sys/vm/drom_caches'
fi

rm -rf /tmp/*

echo -e "Actualitzant sistema i aplicacions"

apt-get update
apt-get upgrade

echo -e "Vols actualitzar la distiribució? 'S'/'N': " 
read RES

if [ "$RES" == "S" ]
then
	apt-get dist-upgrade
fi

echo -e "De quins serveis t'agradaría saber-ne l'estat? Clica X per aturar la selecció:"

BOOL="false"

while [ "$BOOL" == "false" ]
do
	read BOOL
	if [ "$BOOL" == "ssh" ]
	then 
		systemctl status ssh
		echo "desitjes reiniciar-lo? 'S'/'N'"
		read SER
		if [ "$SER" == "S" ]
		then 
			systemctl restart ssh
		fi

	fi

	if [ "$BOOL" == "mysql" ]
	then 
		systemctl status mysql
		echo "desitjes reiniciar-lo? 'S'/'N'"
		read SER
		if [ "$SER" == "S" ]
		then 
			systemctl restart mysql
		fi

	fi

	if [ "$BOOL" == "ftp" ]
	then 
		systemctl status ftp
		echo "desitjes reiniciar-lo? 'S'/'N'"
		read SER
		if [ "$SER" == "S" ]
		then 
			systemctl restart ftp
		fi

	fi
	
	if [ "$BOOL" == "apache2" ]
	then 
		systemctl status apache2
		echo "desitjes reiniciar-lo? 'S'/'N'"
		read SER
		if [ "$SER" == "S" ]
		then 
			systemctl restart apache2
		fi

	fi
	


	if [ "$BOOL" == "X" ]
	then
		break
	fi
done
