#!/bin/bash

#6 Dados três números inteiros (representando os três lados de um triângulo, identifique se o triângulo é escaleno, isósceles ou equilátero.

echo "Ingresse o primeiro lado do triângulo (a):"
read a
echo "Ingresse o segundo lado do triângulo (b):"
read b
echo "Ingresse o terceiro lado do triângulo (c):"
read c


if [ "$a" == "$b" ] && [ "$b" == "$c" ] ;then
	echo "Triângulo equilátero"

elif [ "$a" == "$b" ] || [ "$a" == "$c" ] || [ "$b" == "$c" ] ;then
	echo "Triângulo isóceles"
else
	echo "Triángulo escaleno"
fi


	
