#!/bin/bash
## @author Jerom Moiron Trigo

# Este scipt agrupa as ferramentas necesarias para o tratamento de HDD
separador="------------------------------------------------------------------"
i="y"

############################
##         INDICE         ##
############################
while [ $i = "y" ]
do

echo "1.mknod"
echo "2.Lista /dev"
echo "3.Creacion mnt/fda"
echo "4.Comprobacion disco"
echo "5.Formateo disco"
echo "6.Montaje disco"
echo "7.Comprobacion de montaje"
echo "8.Desmontaje de disco"
echo "Elija la funcion necesaria"

read ch

clear

############################
##   PRIMERA RESPUESTA    ##
############################

if [ $ch = 1 ]
	then echo "Creacion del recurso /dev/fda"
fi

if [ $ch = 2 ]
	then echo "Listado de /dev/fd*"
fi

if [ $ch = 3 ]
	then echo "Creacion del punto de montaje /mnt/fda"
fi

if [ $ch = 4 ]
	then echo "Comprobacion del disco"
fi

if [ $ch = 5 ]
	then echo "Formateo del disco"
fi

if [ $ch = 6 ]
	then echo "Montaje del disco duro"
fi

if [ $ch = 7 ]
	then echo "Comprobacion de montaje"
fi

if [ $ch = 8 ]
	then echo "Desmontaje de disco duro"
fi

############################
##       COMANDOS         ##
############################

echo "$separador"
case $ch in
	1) mknod /dev/fda b 2 0
	echo"Listo";;
	2)ls /dev/fd*;;
	3)mkdir /mnt/fda;;
	4)fsck /dev/fda
	echo "Comprobacion Finalizada";;
	5)mkfs -t ext2 /dev/fda
	echo "Formateo Finalizado";;
	6)mount /dev/fda /mnt/fda
	echo "Montaje realizado, regrese al menu y presione 7 para comprobarlo";;
	7)mount;;
	8)umount /dev/fda
	echo "Desmontaje realizado, regrese al menu y presione 7 para comprobarlo";;
	*)echo "Selecion Incorrecta";;
esac

############################
##          FIN           ##
############################

echo "$separador"
echo "Desea volver al menu principal (y/n))"
read i
clear
if [ $i != "y" ]
then
	exit
fi
done
