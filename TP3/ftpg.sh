#!/bin/sh
s
if [ $# -ne 2 ]
then
 echo "usage : $0 <machine source> <fichier>">&2
 exit 1
else
	sh ftp.sh open $1
	sh ftp.sh get /tmp/$2
	ftp.sh exit
	
fi


