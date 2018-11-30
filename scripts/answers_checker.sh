#!/bin/bash

exec 2> /dev/null
HISTFILE=~/.bash_history
set -o history

history -w
COMMAND=`cat ~/.bash_history | tail -n 2 | head -n 1`

# REVISA USO DE EDITORES DE TEXTO
VIM="vim"
NANO="nano"
RM="rm"
CHECK_EDITOR=$(echo $COMMAND | cut -d " " -f 1)

if [ $CHECK_EDITOR != $VIM ] && [ $CHECK_EDITOR != $NANO ] && [ $RM != $CHECK_EDITOR ]
then
  RESULT=`$COMMAND`
  # RETO MARICO 1
  ANSWER1="samesmail"

  # REVISA RETO MARICO 1
  if [ $RESULT = $ANSWER1 ]
  then
    echo -e "\nBien hecho Kiddo. \nClave para el siguiente reto: samesmail\n\t\t--MrRobot\n"
  fi

  # RETO MARICO 2
  ANSWER2="404 pentest"
  COM=$(diff <(echo $RESULT) <(echo $ANSWER2))	  
  if [ "$COM" = "" ]
  then
    echo -e "\n404 suena a un bad request. Continua. \nClave para el siguiente reto: 404\n\t\t\t\t\t--MrRobot\n"
  fi

  # RETO MARICO 3
  # CABLEADO
  ANSWER3="echo \$DOG"
  if [ "$COMMAND" = "$ANSWER3" ]
  then
    echo -e "\nLindo perro, ¿no?\nClave para el siguiente reto: Flipper\n\t\t-- MrRobot\n"
  fi

  ####################################### E-CORP ####################################

  # RETO 0
  ANSWER0="echo \$HOSTNAME"
  if [ "$COMMAND" = "$ANSWER0" ]
  then
    echo -e "\nEmpezaste bien, kiddo.\nTu clave es: m4ster-s1ave\n\t\t-- MrRobot\n"
  fi

  # RETO 1
  ANSWER1="who"
  if [ "$COMMAND" = "$ANSWER1" ]
  then
    echo -e "\nBien hecho Elliot.\nLa clave para el siguiente reto es: kali\nComencemos a subir el nivel.\n\t\t\t\t-- MrRobot\n"
  fi

  # RETO 2
  # CREA EL ARREGLO DE SOLUCIONES
  ANSWER2[0]="ls -Rla _ZOR _DAE"
  ANSWER2[1]="ls -Rla _DAE _ZOR"
  ANSWER2[2]="ls -Ral _ZOR _DAE"
  ANSWER2[3]="ls -Ral _DAE _ZOR"
  ANSWER2[4]="ls -aRl _ZOR _DAE"
  ANSWER2[5]="ls -aRl _DAE _ZOR"
  ANSWER2[6]="ls -alR _ZOR _DAE"
  ANSWER2[7]="ls -alR _DAE _ZOR"
  ANSWER2[8]="ls -lRa _ZOR _DAE"
  ANSWER2[9]="ls -lRa _DAE _ZOR"
  ANSWER2[10]="ls -laR _ZOR _DAE"
  ANSWER2[11]="ls -laR _DAE _ZOR"

  # ITERA SOBRE EL ARREGLO PARA BUSCAR SOLUCION
  for index in {0..11}
  do
  if [ "$COMMAND" = "${ANSWER2[index]}" ]
  then
    echo -e "\nListar el contenido de un directorio no\nes suficiente para nuestro propósito, \ncontinuemos kiddo.\nClave: gnome\n\t\t\t\t-- MrRobot"
    break	
  fi
  done

  # RETO 3
  RET3=$(echo $RESULT | cut -d " " -f 2)
  if [ "$RET3" = "/sbin/ifconfig" ]
  then
    echo -e "\nAllsafe es un mal nombre para un lugar tan poco seguro.\nClave: allsafe\n\t\t\t\t\t--MrRobot\n"
  fi 

  # RETO 4
  # CREA EL ARREGLO DE SOLUCIONES
  if [ "$COMMAND" = "cd _ZOR && cd _REA && cd -" ]
  then
    echo -e "\nLas interfaces graficas son para maricos.\nClave: kde\n\t\t\t\t --MrRobot\n"
  fi

  # RETO 5
  ANSWER5=":1322eccb acabasdeconseguirlaclave_hellofriend"
  RET5=$(eval $COMMAND | grep "clave")
  COM=$(diff <(echo -e "$ANSWER5") <(echo "$RET5"))
  if [ "$COM" = "" ]
  then
    echo -e "\nNecesitas moverte más rápido si quieres lograrlo.\nClave: hellofriend\n\t\t\t\t\t\t-- MrRobot\n"
  fi

  # RETO 7
  ANSWER7="1009"
  EV=$(eval $COMMAND)
  if [ $EV = $ANSWER7 ]
  then
  	echo -e "\nExcelente, has encontrado la femtocell\nClave para el siguiente reto: d3bug (juego)\nEntregame la femtocell. (terminal)\n"
	echo -e "\nSigue avanzando Elliot, aun queda camino.\n\t\t\t\t\t-- MrRobot\n"
  fi

  # RET0 8
  #if [ ]

  ###################################### FBI ################################

  # RETO 9
  ###################################CABLE
  ANSWER9="chmod 777 pyth0n && less pyth0n"

  if [ "$COMMAND" = "$ANSWER9" ]
  then
    echo -e "\nHas demorado demasiado, apúrate.\nClave: init 1\n\t\t\t\t-- MrRobot"
  fi

  # RETO 10
  PROVE=$(ls -l | grep -e pwnphone -e ntpassword -e magspoof | cut -d " " -f 1,10,18 | cut -d " " -f 1,3,5)
  ANSWER10="dr--r--r--\ndr--r--r--\ndr--r--r--"
  RET10=$(diff <(echo "$PROVE") <(echo -e "$ANSWER10"))
  if [ "$RET10" = "" ]
  then
    echo -e "\nBien chico, sigue así.  \nClave: h4ndshake\n\t\t\t\t -- MrRobot\n"
    chmod +x /home/elliot/Arcade/FBI/pwnphone 
  fi

  # RETO 12
  ANSWER12="./_OF/_THE/bomB\n./_MR/_MAC/BomB\n./_ROBOT/_ROBOT/boMb"
  RET12=$(diff <(echo "$RESULT") <(echo -e "$ANSWER12"))
  if [ "$RET12" = "" ]
  then
    echo -e "\nUn shutdown siempre puede causar problemas. Apúrate.\nClave: shutdown\n\t\t\t\t -- MrRobot\n"
  fi

  # RETO 13
  ANSWER13[0]="ps --ppid 1 | sort -nr"
  ANSWER13[1]="ps --ppid 1 | sort -rn"
  for index in {0..1}
  do
    if [ "$COMMAND" = "${ANSWER13[index]}" ]
    then
      echo -e "\nEspero que no seas estúpido y estes realizando todos los retos.\nClave: shayla\n\t\t\t\t -- MrRobot\n"
    fi
  done

  # RETA 14
  if [ "$COMMAND" = "man chmod | cat -n | less" ]
  then
    echo -e "\nSería una pena que mataran a uno de nuestros amigos.\nClave: mobley\n\t\t\t\t\t\t-- MrRobot\n"
  fi

  # RETO 15
  RET15=$(eval "$COMMAND")
  if [ "$RET15" = "k3rnelp4nic" ]
  then
    echo -e "\nEsperemos que no hagas ninguna estupidez que genere un kernel panic.\nClave: k3rnelp4nic\n\t\t\t\t\t\t\t\t\t-- MrRobot"
  fi

  ########################################## DARK ARMY ##########################################

  # RETO 17
  ANSWER17[0]="du -h --max-depth=1 /home/elliot 2>du_error >du_result"
  ANSWER17[1]="du -h --max-depth=1 /home/elliot >du_error 2>du_result"
  ANSWER17[2]="du --max-depth=1 -h /home/elliot 2>du_error >du_result"
  ANSWER17[3]="du --max-depth=1 -h /home/elliot >du_error 2>du_result"

  for index in {0..3}
  do
	    
    COM=$(diff <(echo $COMMAND) <(echo ${ANSWER17[index]}))
    if [ "$COM" = "" ]
    then
      echo -e "\nFalta poco Elliot, continua.\nClave: morphine\n\t\t\t\t\t\t\t-- MrRobot\n"
    fi
  done

  # RETO 18
  ANSWER18[0]="drwxrwxrwx"	
  ANSWER18[1]="-rwxrwxrwx"
  COMAN[0]="ls -l | grep _zer0es | cut -d ' ' -f 1"
  COMAN[1]="ls -l _zer0es | grep hackeo24 | cut -d ' ' -f 1"
  RES[0]=$(eval ${COMAN[0]})
  RES[1]=$(eval ${COMAN[1]})
  COM[0]=$(diff <(echo "${RES[0]}") <(echo "${ANSWER18[0]}"))
  COM[1]=$(diff <(echo "${RES[1]}") <(echo "${ANSWER18[1]}"))

  if [ "${COM[0]}" = "" ] && [ "${COM[1]}" = "" ] 
  then
	echo -e "\nKiddo! 3 más y lo logramos.\nClave: j0anna\n\t\t\t\t\t\t\t-- MrRobot\n" 
  	chmod g=r /home/elliot/Arcade/Dark_Army/_zer0es
  fi

  # RETO 19
  ANSWER19[0]="mv -n ???? ?????? ???????? ../_s0urce"	
  ANSWER19[1]="mv -v ???? ???????? ?????? ../_s0urce"
  ANSWER19[2]="mv -v ?????? ???? ???????? ../_s0urce"
  ANSWER19[3]="mv -v ?????? ???????? ???? ../_s0urce"
  ANSWER19[4]="mv -v ???????? ???? ?????? ../_s0urce"
  ANSWER19[5]="mv -v ???????? ?????? ???? ../_s0urce"

  for index in {0..5}
  do
  	if [ "$COMMAND" = "${ANSWER19[index]}"  ]
  	then
		echo -e "\nVale verga la vida.\nClave: honeypot\n\t\t\t-- MrRobot\n"
  	fi
  done

# RETO 20
ANSWER20="115 116 117 118 119 120 215 216 217 218 219 220 315 316 317 318 319 320 415 416 417 418 419 420 515 516 517 518 519 520"
COM=$(diff <(echo $ANSWER20) <(echo $(eval $COMMAND)))

if [ "$COM" = "" ]
then
	echo -e "\nOjalá que no hayas borrado el home de Mark Zuckenberga en el camino.\nClave: shutup\n\t\t\t\t\t-- MrRobot\n"
fi

# RETO 21
ANSWER21="CREETE QUE ERES SUPER EAS... DI EN VOZ ALTA: SOY EAS"
RET21=$(eval $COMMAND)
if [ "$RET21" = "$ANSWER21" ]
then
	echo -e "\nHey kiddo, concéntrate.\nClave: m3tadata\n\t\t\t\t-- MrRobot\n"
fi

# RETO 22
ANSWER22="1965a1966\n> wh1ter0se"
RET22=$(eval $COMMAND)
COM=$(diff <(echo -e "$ANSWER22") <(echo "$RET22"))

if [ "$COM" = "" ]
then
	echo -e "\nTenemos que hablar.\nClave: wh1ter0se\n\t\t\t-- MrRobot\n"
fi

else
  # RETO 16
	ANSWER16[0]="rm -ri ???? ??????"
	ANSWER16[1]="rm -ir ???? ??????"
	ANSWER16[2]="rm -ri ?????? ????"
	ANSWER16[3]="rm -ir ?????? ????"
	for index in {0..3}
	do
		if [ "$COMMAND" = "${ANSWER16[index]}"  ]
		then
			echo -e "\nLas redes deben ser tus amigas, falta poco kiddo.\nClave: cisco\n\t\t\t\t\t\t\t\t-- MrRobot\n"
		fi
	done
	RESULT="MAC"
fi
