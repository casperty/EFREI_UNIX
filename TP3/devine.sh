cmpt=0 # compteur
valid=1 # variable de test
chiffre=5 #il suffit de remplacer $chiffre par $RANDOM si on veut utiliser un chiffre aléatoire
echo "Nombre cible choisi"
while [ $valid -eq 1 ]
do
	echo "Entrer un nombre : "
	read nb
	if [ $nb -eq $chiffre ]
	then
		# incrementation (equivalent de cpt++ en C)
		cmpt=`expr $cmpt+1`
		valid=0
		echo "Bravo, gagné en $cmpt coups"	
	else
		cmpt=`expr $cmpt+1`
		if [ $nb -lt $chiffre ]
		then
			echo "Nombre cible plus grand"
		else
			# cas exclusif : si il n'est pas egal ni plus petit que le chiffre alors il est forcement plus grand
			echo "Nombre cible plus petit"
		fi
	fi
done