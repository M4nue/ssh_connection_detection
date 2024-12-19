#!/bin/sh
#Autores: M4nue
#Descripción: Script para informar cuando alguien se ha conectado a tu maquina, actuando como servicio

#Variables
IPS_PERMITIDAS=$(ip a | awk -F " " '/([0-9]{1,3}\.){3}[0-9]{1,3}/{print $2,$4}' | awk -F "/" '{print $1,$2}' | awk -F " " '{print $1,$3}' | tr -s "[:space:]" ":")
DETECCION_CONEXIONES=$(journalctl -u ssh -o json | jq | egrep "MESSAGE\"\:\ \"Accepted" | awk -F " " '{print $7,$9}')



echo -e "$IPS_PERMITIDAS \n $DETECCION_CONEXIONES"
