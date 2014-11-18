#!/bin/bash
# Si le nombre d'arguments est inferieur a 3 ce n'est pas bon
if [ $# -lt 3 ]
then
 echo "Utilisation : surveillance <periode> <seuil> <log>"
else
 echo "Debut de la surveillance"
 # TODO : une boucle avec le sleep
 datecourante=`date`
 # TODO : filtrer la commande ps
 # listing=`ps`
 # Comptage
 cmpt=`$listing | wc -l` # affiche le nombre de lignes

fi
