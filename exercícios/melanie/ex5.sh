#!/bin/bash

#5 Leia em um caractere da entrada Se o caractere for 'Y' ou 'y', exiba "YES”, se o caractere for 'N' ou 'n', exiba "NÃO". Se for outra coisa exiba não conheço
echo "Insira Y/y or N/n"

N="$1"

if [ $N == "Y" -o $N == "y" ];then
	echo "YES"
fi

if [ $N == "N" -o $N == "n" ];then
	echo "NÃO"
fi	

	

