#!/bin/bash


echo -e "Digues el direcori del que vols fer la còpia de seguretat: "

read ODIR


echo -e "Digues el direcotri on vols que es copiï la informació: "

read DDIR


echo -e "Digues el fitxer que vols copiar segurament: "

read FILE


cp $ODIR$FILE $DDIR 

if $(diff $ODIR$FILE $DDIR$FILE) 
then 
	echo -e "la còpia sha format correctament\n " 
fi

OMD5=$(md5sum $ODIR$FILE | awk '{print $1}') 
DMD5=$(md5sum $DDIR$FILE | awk '{print $1}')


if [ "$OMD5" = "$DMD5" ]
then
echo -e "Els hashes d'aquests fitxers són iguals. molt bé"

else
	echo -e "Uyuyuyuy algo ha passat perque crec que els hashes d'aquests arxius són diferents"
fi

