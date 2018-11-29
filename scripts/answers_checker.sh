#!/bin/bash

exec 2> /dev/null
HISTFILE=~/.bash_history
set -o history

history -w
COMMAND=`cat ~/.bash_history | tail -n 2 | head -n 1`

# REVISA USO DE EDITORES DE TEXTO
VIM="vim"
NANO="nano"
CHECK_EDITOR=$(echo $COMMAND | cut -d " " -f 1)

if [ $CHECK_EDITOR != $VIM ] && [ $CHECK_EDITOR != $NANO ]
then
	RESULT=`$COMMAND`
else
	RESULT="MAC"
fi

# RETO MARICO 1
ANSWER1="samesmail"

# REVISA RETO MARICO 1
if [ $RESULT = $ANSWER1 ]
then
	echo -e "\nBien hecho Kiddo. \n\t\t--MrRobot\n"
fi

# RETO MARICO 2
ANSWER2="404"

# REVISA RETO MARICO 2

if [ $RESULT = $ANSWER2 ]
then
	echo -e "\n404 suena a un bad request. Continua. \n\t\t\t\t\t--MrRobot\n"
fi

# RETO MARICO 3
# CABLEADO
ANSWER3="echo \$DOG"
if [ "$COMMAND" = "$ANSWER3" ]
then
	echo -e "\nLindo perro, ¿no?\n\t\t-- MrRobot\n"
fi

####################################### E-CORP ####################################

# RETO 1
ANSWER1="echo \$HOSTNAME"
if [ "$COMMAND" = "$ANSWER1" ]
then
	echo -e "\nEmpezaste bien, kiddo.\n\t\t-- MrRobot\n"
fi

# RETO 2
ANSWER2="who"
if [ "$COMMAND" = "$ANSWER2" ]
then
	echo -e "\nBien hecho Elliot.\nLa clave para el siguiente reto es: gnome\nComencemos a subir el nivel.\n\t\t\t\t-- MrRobot\n"
fi

# RETO 3
# CREA EL ARREGLO DE SOLUCIONES
ANSWER3[0]="ls -Rla _ZOR _DAE"
ANSWER3[1]="ls -Rla _DAE _ZOR"
ANSWER3[2]="ls -Ral _ZOR _DAE"
ANSWER3[3]="ls -Ral _DAE _ZOR"
ANSWER3[4]="ls -aRl _ZOR _DAE"
ANSWER3[5]="ls -aRl _DAE _ZOR"
ANSWER3[6]="ls -alR _ZOR _DAE"
ANSWER3[7]="ls -alR _DAE _ZOR"
ANSWER3[8]="ls -lRa _ZOR _DAE"
ANSWER3[9]="ls -lRa _DAE _ZOR"
ANSWER3[10]="ls -laR _ZOR _DAE"
ANSWER3[11]="ls -laR _DAE _ZOR"

# ITERA SOBRE EL ARREGLO PARA BUSCAR SOLUCION
for index in {0..11}
do
	if [ "$COMMAND" = "${ANSWER3[index]}" ]
	then
		echo -e "\nListar el contenido de un directorio no\nes suficiente para nuestro propósito, \ncontinuemos kiddo.\n\n\t\t\t\t-- MrRobot"
		break	
	fi
done

# RETO 4
# CREA EL ARREGLO DE SOLUCIONES
ANSWER4[0]="cd _ZOR && "

# RETO 7
ANSWER7="1009"
EV=$(eval $COMMAND)
if [ $EV = $ANSWER7 ]
then
	echo -e "\nSigue avanzando Elliot, aun queda camino.\n\t\t\t\t\t-- MrRobot\n"
fi

# RETO 9
###################################CABLE
ANSWER9="chmod 777 pyth0n && less pyth0n"

if [ "$COMMAND" = "$ANSWER9" ]
then
	echo -e "\nHas demorado demasiado, apúrate.\n\t\t\t\t-- MrRobot"
fi

# RETO 10
echo $COMMAND
ANSWER10="dr--r--r-- dr--r--r-- dr--r--r-- "
PROVE=$(ls -l | grep -e pwnphone -e ntpassword -e magspoof | cut -d " " -f 1,10,18 | cut -d " " -f 1,3,5)
echo $PROVE
echo $ANSWER10
if [ "$PROVE" = "$ANSWER10" ]
then
	echo "Si"
else
	echo "No"
fi
