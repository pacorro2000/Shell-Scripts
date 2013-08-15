#!/bin/sh
# Script en shell para el resplado de una base de datos MySQL
# Creado por: Francisco R. Reyes G
# Fecha: : 15 de agosto de 2013

## Variables

RESPALDO=/directorio/directorio/respaldos # Dirigir a cualquier directorio
cd $RESPALDO
mkdir `date '+%d-%m-%Y'`
TIEMPO=$(date +"%d-%m-%Y")

MUSER="root" # Usuario de la base de datos MySQL
MPASS="12345" # Contraseña del usuario de la base de datos
MHOST="localhost" # Host en donde se encuentra la base de datos
MYSQLDUMP="$(which mysqldump)"
MDB="db" # Nombre de la base de datos MySQL
GZIP="$(which gzip)"
MAIL="example@example.com" # Correo a donde se enviaran los respaldos
MAILER="$(which mutt)"

## Haciendo el respaldo

echo "Respaldo de $MDB en $TIEMPO"

	ARCHIVO=$RESPALDO/$TIEMPO/mysql-$MDB.$TIEMPO-$(date +"%T").sql.gz
	$MYSQLDUMP -u $MUSER -h $MHOST -p$MPASS --lock-all-tables $MDB | $GZIP -9 > $ARCHIVO | echo "Listo para descargar" | $MAILER -s "Respaldo de $MDB con fecha de  $TIEMPO listo"  $MAIL 

