#! /bin/bash

#8 considere um arquivo com diversos números (um em cada linha) calcule a média, desvio padrão e mediana

filename='arq_ex8.txt'
n=1
soma=0
resta_2=0
cont1=0
cont2=0
cont3=0
soma_acul_resta_2=0

# Média
while read line; do
	((cont1++))
	# Leyendo cada linea
	echo "Linea N. $n: $line"
	n=$((n+1))
	soma=$(echo $soma+$line | bc -l) 
done < $filename
	media=$(echo "$soma/$cont1" | bc -l) 	

# Desvio padrão ($line-$media)^2 
while read line; do
	((cont2++))
	N=$((cont2-1))
	resta=$(echo $line - $media | bc -l)
	resta_2=$(echo $resta^2 | bc -l)
	soma_acul_resta_2=$(echo $soma_acul_resta_2 + $resta_2 | bc -l)
	desvio_1=$(echo $soma_acul_resta_2/$N | bc -l)
	desvio_2=$(echo "sqrt($desvio_1)" | bc -l)
done < $filename

echo "A soma é: $soma"
echo "A média é: $media"
echo "O desvio_2 é: $desvio_2"


#Mediana
cd /home/melaniegisselurdangaringamarra/Documentos/exercicios
#touch arquivo1
#sort -f arquivo.txt > arquivo1

touch sort.txt
sort -n arq_ex8.txt > sort.txt

filename2='sort.txt'


while read line; do
	((cont3++))
done < $filename2

num_lineas=$cont3
echo "Número de elementos no conjunto: $num_lineas"
par_impar=$((num_lineas%2))
i_mediana_impar=$((num_lineas/2+1))
i1_mediana_par=$((num_lineas/2))
i2_mediana_par=$((num_lineas/2+1))

cont4=1
cont5=1

if [ $par_impar -ne 0 ]; then
	echo "Conjunto impar, indice do elemento para o cálculo da mediana: i=$i_mediana_impar"
		while read line; do
			((cont4++))
			if [ $cont4 -eq $i_mediana_impar ];then
				echo "A mediana é: $line."
			fi	
		done < $filename2
else
	echo "Conjunto par, indices dos elementos para o cálculo da mediana: i1=$i1_mediana_par, i2=$i2_mediana_par"
		while read line; do
			((cont5++))
			if [ $cont5 -eq $i1_mediana_par ];then
				valor_i1=$line
				echo "Valor correspondente i1 = $valor_i1"
			fi	
			
			if [ $cont5 -eq $i2_mediana_par ];then
				valor_i2=$line
				echo "Valor correspondente i2 = $valor_i2"
			fi			
		done < $filename2
		soma_valor_i1_i2=valor_i1+valor_i2
	echo "A mediana é ($valor_i1+$valor_i2)/2 = $((soma_valor_i1_i2/2))"
fi 


#	$(($variavel*$variavel))

# FONTE:	https://linuxhint.com/read_file_line_by_line_bash/#:~:text=If%20you%20want%20to%20read,read%20command%20in%20while%20loop.&text=Create%20a%20file%20named%20company2,file%20content%20without%20any%20backslash.








