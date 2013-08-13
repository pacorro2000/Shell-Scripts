#!/bin/sh
# Programa para convertir nombres de archivos de mayusculas a minusculas y
# viceversa.
#
# Nota: Para convertir de minusculas a mayusculas solamente hay que cambiar
# (typeset -u) a (typeset -l)
#
# Creado por: Francisco R. Reyes Gutierrez
# Fecha: 13 de agosto de 2013

typeset -u Lcase

for Ucase in `ls`
do
    Lcase=$Ucase
    mv $Ucase $Lcase
done

