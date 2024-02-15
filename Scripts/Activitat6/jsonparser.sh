#!/bin/bash


echo -e "Aquí tens el teu json: "

cat hamburgueses.json

echo -e "\n\nLa mitjana de preu de les hamburgueses és: "

SUMA=0
CONTADOR=0

for i in $(cat hamburgueses.json | jq -r '.[].[]' | sed 's/\$//g')
do 
	CONTADOR=$(echo "$CONTADOR + 1" | bc)
	SUMA=$(echo "$SUMA + $i" | bc)
done

RESULTAT=$(echo "scale=2; $SUMA / $CONTADOR" | bc)

echo $RESULTAT


echo -e "\n\nLa mediana aritmètica, en canvi és: "


NUMEROS=$(cat hamburgueses.json | jq -r '.[].[]' | sed 's/\$//g')



NORD=$(echo "$NUMEROS" | tr ' ' '\n' | sort -n)


NQTT=$(echo "$NORD" | wc -l)

if [ $(($NQTT % 2)) -eq 1 ] 
then
	MEDIANA=$(echo "$NORD" | awk -v n=$((NQTT / 2 + 1)) 'NR == n')
else
	MEDIANA=$(echo "$NORD" | awk -v n=$((NQTT / 2)) 'NR == n { a=$1; getline; print (a+$1)/2 }')
fi

echo $MEDIANA

echo -e "\n\nPer acabar el màxim i el mínim śon (oju la essa amb accent): "

NOR=$(echo "$NUMEROS" | tr ',' '.' | sort -n)

FV=$(echo "$NOR" | awk '{print $1}')

echo $FV

