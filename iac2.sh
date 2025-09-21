#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonhonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/
