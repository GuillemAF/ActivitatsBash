#!/bin/bash



echo -e "La teva CPU i memòria és la següent: \n" > log.bak

#Busquem els procesos per cpu i memoria i mostrem els cinc primers i ho guardem a log.bak amb ps aux

ps aux --sort=-%cpu,%mem | head -n 6 >> log.bak

echo -e "\n\nL'espai en el teu disc és: \n" >> log.bak

#L'espai al disc ho guardem en un log.bak

df -h >> log.bak

cat log.bak


