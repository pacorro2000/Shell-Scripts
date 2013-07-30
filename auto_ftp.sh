#!/bin/bash
# Programa para automatizar la transferencia de archivos por FTP
#
# Instrucciones:
#
# 1.- Crear el archivo .netrc en el directorio HOME
# 2.- Añadir una linea como esta: 
#   machine <host destino>  login <nombre de usuario> password <contraseña>
# 3.- Dar los permisos 600 al archivo
#
# Creado por: Francisco R. Reyes Gutierrez
# Fecha: 22 de mayo de 2013
#

ftp abc.mydomain.com << endl
prompt
put test1.c
quit
endl

