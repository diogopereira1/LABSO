#!/bin/bash

p1=$1 num=$(cat meu.txt | wc -l)

echo "numero de linhas: $num"

if ([ $num -lt 100 ])
then
	echo "arquivo abaixo de 100 linhas"
	mv $p1 pequeno
	echo $(ls pequeno)

	a=i
	echo -e "\n"
	echo "deseja desfazer ação? S/N"
	read $a

	if ( [ $a == "s" ] || [ $a == "S" ])
	then
		echo $(cd pequeno)
		echo $(mv $p1 ..)
		echo "ação desfeita!"
	else
		echo "ação realizada!"
	fi
else
	if ([ $num -gt 100 ] && [ $num -lt 500 ])
	then
		echo "arquivo acima de 100 linhas e abaixo de 500"
		mv $p1 medio
		echo $(ls medio)

	        a=i
		echo -e "\n"
	        echo "deseja desfazer ação? S/N"
	        read $a

	        if ( [ $a == "s" ] || [ $a == "S" ])
	        then
	                echo $(cd medio)
	                echo $(mv $p1 ..)
	                echo "ação desfeita!"
	        else
	                echo "ação realizada!"
	        fi

	else
		echo "arquivo acima de 500 linhas"
		mv $p1 grande
		echo $(ls grande)

	        a=i
		echo -e "\n"
	        echo "deseja desfazer ação? S/N"
	        read $a

	        if ( [ $a == 's' ] || [ $a == 'S' ])
	        then
	                echo $(cd pequeno)
	                echo $(mv $p1 ..)
	                echo "ação desfeita!"
	        else
	                echo "ação realizada!"
	        fi
	fi
fi
