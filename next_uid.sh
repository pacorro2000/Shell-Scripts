#!/bin/bash
# Programa que busca de alguna manera el UID proximo disponible
#
# Programado por: Francisco Reyes Gutierrez
# Fecha: 05 de junio de 2013

awk -F":" '{ print $3 }' /etc/passwd > number_list
awk -F":" '{ print $3 }' /etc/group >> number_list
A=` sort -g number_list | tail -1`
A=`expr $A + 1`
echo "El UID nuevo disponible es: $A"
