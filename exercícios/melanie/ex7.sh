#!/bin/bash

#7 receba um número N e o nome de um arquivo gere N números aleatoriamente e salve os números (um em cada linha) no arquivo passado como parâmetro

N="$1"
arq_ex7="$2"

touch $arq_ex7

for i in `seq 1 "$N"` ; do
var=$RANDOM
echo "#N$i: $var" >> $arq_ex7

done





