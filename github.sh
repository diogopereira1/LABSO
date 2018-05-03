#!/bin/bash

echo "Informe usuario: "
read usuario

echo "Informe email: "
read email

$ git config --global user.name $usuario
$ git config --global user.email $email

git add *

git commit -m "via script"

git push
