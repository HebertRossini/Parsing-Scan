#!/bin/bash

#By Hebert Roludo

echo "	+-------------------------------------------------------------+"
echo "	|  ____                _               ____                   |"   
echo "	| |  _ \ __ _ _ __ ___(_)_ __   __ _  / ___|  ___ __ _ _ __   |"
echo "	| | |_) / _  |  __/ __| |  _ \ / _  | \___ \ / __/ _  |  _ \  |"
echo "	| |  __/ (_| | |  \__ \ | | | | (_| |  ___) | (_| (_| | | | | |"
echo "	| |_|   \__,_|_|  |___/_|_| |_|\__, | |____/ \___\__,_|_| |_| |"
echo "	|    Codado por Hebert Rossini |___/                    V1.0  |"
echo "	+-------------------------------------------------------------+"
echo""
if [ "$1" == "" ]

then
echo " 	Exemplo:"
echo "	./parsingscan.sh www.sitealvo.com"
echo""
else
wget -q $1
grep href index.html | cut -d "/" -f3 | grep "\." | cut -d '"' -f1 | sort -u | grep -v '<' | grep -v '>' | grep -v '(' > lista

for url in $(cat lista); do host $url;done | grep "has address"

rm index.html

fi


