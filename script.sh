#!/bin/sh
#Autores: M4nue y f1rul4yx
#Descripción: Script para informar cuando alguien se ha conectado a tu maquina, actuando como servicio

#Variables globales
IPS_PERMITIDAS=$($(ip a | awk -F " " '/([1-9]{1,3}\.){3}[1-9]{1,3}/{print $2,$4}' | awk -F "/" '{print $1,$2}' | awk -F " " '{print $1,$3}' | tr -s "[:space:]" ":"))

