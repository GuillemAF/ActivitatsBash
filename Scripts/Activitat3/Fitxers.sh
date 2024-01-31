#!/bin/bash 

#Demanem el nom del direcori i quants fitxers vols dintre d'ell.
echo -e "Com vols que es digui el nou directori?: "
read NOMDIRECTORI

mkdir $NOMDIRECTORI
cd $NOMDIRECTORI

echo -e "Quants fitxers de text vols que tingui el teu fakin directori màquina?: "
read NUMDIRECTORI 

#Per cada arxiu demanem el contingut i el creem.
for (( i=1; i<=$NUMDIRECTORI; i++ ))
do
	echo "Què vols que hi hagi al arxiu $i?: " 
	read CONTINGUT

	echo $CONTINGUT >> arxiu$i
done

#Llistem el contingut del direcori.

ls -la

