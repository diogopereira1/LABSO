#!/bin/bash

echo "insira o nome"
read nome

if [ -z $nome ]; then
	echo "nome vazio"
else
	nome1=${nome#*.}

	op1=${#nome}
	op2=${#nome1}

	num=$(( $op1 - $op2 - 1 ))

	echo "boa noite $nome1, ${nome:0:$num}"
fi
