#!/bin/bash


echo -e "Comprovem la conexió a internet llançant un ping a google.es"

ping google.es -c 4

echo -e "\n\n\nLa teva configuració de xarxa és la següent : \n\n"


ip a

echo -e "\n\n"

netstat -rn

echo -e "\n\n"


echo -e "\n\n\nAra llençarem un traceroute d'acord petitó?\nPose'm un domini/IP així potentorro ahí per tirar-li tot el traceroute aver que pasa hermano: "
read DOMAIN

traceroute $DOMAIN


echo -e "\n\nAra comprovarem la velocitat i l'ample de banda del nostre equip amb un server utilitzant iperf3 et sembla bé? no? et fots: \nintrodueïx el domini al que vols aplicar aquest programa: "
read DOM
echo -e "\nAra diques el port: "
read PT

iperf3 -c $DOM -p $PT
