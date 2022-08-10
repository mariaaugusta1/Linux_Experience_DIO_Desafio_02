#!/bin/bash


echo "Baixando e atualizando o servidor ..."
apt-get update
apt-get upgrade

echo "Instalando o apache2 e o unzip ..."

apt-get intall apache2 unzip -y

echo "Baixando e copiando os arquivos da aplicacao ..."

cd /tmp

apt-get install wget -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando e criando uma pasta linux-site-dio"

unzip main.zip

cd linux-site-dio

cp -R * /var/www/html/

 


