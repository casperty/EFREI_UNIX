#!/bin/sh

if [ $# -ne 2 ]
then
 echo "usage : $0 <fichier> <machine cible>">&2
 exit 1
else
	cp $1 /tmp/$1
	sh ftp.sh open $2
	sh ftp.sh put /tmp/$1
	ftp.sh exit
	rm -f /tmp/$1
	
fi


