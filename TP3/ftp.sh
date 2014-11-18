#!/bin/sh
#
# Simulation de la commande interactive ftp (open, get, put, exit)
#

# Verification de la syntaxe d'appel
if [ $# -gt 1 ]; then
	echo "usage: ftp [host]" >&2
	exit 1
fi

# Traitement du parametre $1 s'il spécifié
HOST=
if [ $# -eq 1 ]; then
	HOST=$1
	echo Connected to $HOST
fi

# Boucle de lecture des commandes en interactif
PROMPT="ftp> "
echo -n $PROMPT
while read CMD ARG; do
	case $CMD in
		open) 
			if [ -z "$ARG" ]; then
				echo No host to connect to
			else
				HOST=$ARG
				echo Connected to $HOST
			fi;;
		get)
			if [ -z "$HOST" ]; then
				echo Not connected
			elif [ -z "$ARG" ]; then
				echo No file to get
			else
				echo File $ARG transfered from $HOST
			fi;;
		put)
			if [ -z "$HOST" ]; then
				echo Not connected
			elif [ -z "$ARG" ]; then
				echo No file to put
			else
				echo File $ARG transfered to $HOST
			fi;;
		exit)
			echo Bye
			exit 0;;
		*) 
			echo Unknown command $CMD;;
	esac
	echo -n $PROMPT
done

