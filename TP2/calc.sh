if [ $2 == "x" ]
then
echo "le resultat est " $(($1 * $3))
elif [ $2 == "+" ]
then
echo "le resultat est " $(($1 + $3))
elif [ $2 == "-" ]
then
echo "le resultat est " $(($1 - $3))
elif [ $2 == "/" ]
then
echo "le resultat est " $(($1 / $3))
else
echo "mauvais operateur"
export $var
echo $var
fi