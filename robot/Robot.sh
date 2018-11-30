#Mensajes Reutilizables
MENSAJE_READ="[Enter para continuar] "
MENSAJE_FEMTOCELL="[Enter para entregar Femtocell]"
MENSAJE_FBI="[Enter para entregar la data del FBI]"
MENSAJE_VICTIMAS="[Enter para preguntar por la victimas]"
intentos=1

#TRAP DARKARMY
function trapear {
    trap insultar_army SIGHUP
    trap insultar_army SIGINT
    trap insultar_army SIGQUIT
    trap insultar_army SIGILL
    trap insultar_army SIGTRAP
    trap insultar_army SIGABRT
    trap insultar_army SIGBUS
    trap insultar_army SIGFPE
    trap insultar_army SIGUSR1
    trap insultar_army SIGSEGV
    trap insultar_army SIGUSR2
    trap insultar_army SIGPIPE
    trap insultar_army SIGALRM
    trap insultar_army SIGTERM
    trap insultar_army SIGSTOP
    trap insultar_army SIGTSTP
    echo ""
}
#TRAP MR.ROBOT
function trapear2 {
    trap insultar SIGHUP
    trap insultar SIGINT
    trap insultar SIGQUIT
    trap insultar SIGILL
    trap insultar SIGTRAP
    trap insultar SIGABRT
    trap insultar SIGBUS
    trap insultar SIGFPE
    trap insultar SIGUSR1
    trap insultar SIGSEGV
    trap insultar SIGUSR2
    trap insultar SIGPIPE
    trap insultar SIGALRM
    trap insultar SIGTERM
    trap insultar SIGSTOP
    trap insultar SIGTSTP
    echo ""
}


# Explicacion de la dinamica de MR.Robot al user
function inicio {

    clear
    echo "Hola preparador,porfavor anota mi PID es: $$"
    echo "(Recuerda que debo estar ejecutandome bajo el user serverfsociety)"
		printf "\n\n\n"
    read -p "$MENSAJE_READ"
    clear

    cat dibujos/Intro.txt
    printf "\n\n\n"
    read -p "$MENSAJE_READ"
    clear

    cat dibujos/christian.txt
    sleep 1.8
    echo "mr.robot@pc:\$ Arriba chico, que sucede?" ; sleep 3
    echo "mr.robot@pc:\$ Mucho tiempo sin usar una computadora?" ; sleep 3
    echo "mr.robot@pc:\$ Soy yo elliot, tu amigo el señor Robot. Escucha" ; sleep 3
    echo "." ; sleep 1
    echo "." ; sleep 1
    echo "." ; sleep 1
    printf "\n\n\n"
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/christian.txt
    echo "mr.robot@pc:\$ Necesito saber si estas en forma para seguir con nuestros planes" ; sleep 3
    echo "mr.robot@pc:\$ Te iré dando retos que deberás cumplir" ; sleep 2.5
    echo "mr.robot@pc:\$ Si haces bien, tendrás una clave la cual podras darme" ; sleep 3
    printf "\n\n\n"
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/christian.txt
    echo "mr.robot@pc:\$  he preparado casi todo para ti, lee las intrucciones.." ; sleep 3.3
    echo "mr.robot@pc:\$  Deberas iniciar sesion en el TTY2 con:" ; sleep 3
    echo "mr.robot@pc:\$  User: elliot" ; sleep 2
    echo "mr.robot@pc:\$  Passwd: fsociety" ; sleep 2
    echo "mr.robot@pc:\$  Lo tienes? (deberias anotarlo)" ; sleep  1.8
    printf "\n"
    while true
    do
    read -p "[SI/NO] " respuesta
    printf "\n"

    #Respuesta vacia = SI
    if [ -z "${respuesta}" ]; then
    respuesta='SI'
    fi

    if [ $respuesta = "NO" -o $respuesta = "no" ]
    then
	echo "mr.robot@pc:\$ Espero no le supliques al preparador por la clave" ; sleep 2
	printf "\n\n"
	read -p "$MENSAJE_READ"
	break
    elif [ $respuesta = "SI" -o $respuesta = "si" ]
    then
	echo "mr.robot@pc:\$ Me preocupa que hayas tenido que anotar algo tan trivial.. continuemos" ; sleep 2
	printf "\n\n"
	read -p "$MENSAJE_READ"
	break
    else
	echo "mr.robot@pc:\$ Elliot..? estas bien chico?"
	printf "\n\n"
    fi
    done
    clear
    cat dibujos/christian.txt
    echo "mr.robot@pc:\$  El entorno esta casi listo para probar tus habilidades" ; sleep 2.7
    echo "mr.robot@pc:\$  Muevete por las computadoras de la habitacion para ver los distintos retos (TTY7)" ; sleep 3.9
    echo "mr.robot@pc:\$  Para realizarlos ve al TTY2 con el usuario que te asigne anteriormente" ; sleep 4.5
    echo "mr.robot@pc:\$  Yo estare en el TTY1, si no me ves es porque estare en la computadora trabajando" ; sleep 3
    echo "." ; sleep 0.4
    echo "." ; sleep 0.4
    echo "." ; sleep 0.4
    echo "mr.robot@pc:\$  En ese caso si me necesitas escribe: 'PING_MR_ROBOT' y estare de vuelta contigo" ; sleep 4
    echo "mr.robot@pc:\$  Cuando este contigo puedes pedirme ayuda, solo escribe: ayuda, help, AYUDA etc etc." ; sleep 4
    echo "mr.robot@pc:\$  (deberias anotar eso... Ultimamente, se te olvida todo)" ; sleep 3
    echo "." ; sleep 0.4
    echo "." ; sleep 0.4
    echo "." ; sleep 0.4
    echo "mr.robot@pc:\$  Entendiste?" ; sleep 1
    printf "\n"
    while true
    do
    read -p "[SI/NO] " respuesta
    printf "\n"

    #Respuesta vacia = SI
    if [ -z "${respuesta}" ]; then 
    respuesta='SI'
    fi

    if [ $respuesta = "SI" -o $respuesta = "si" ]
    then
        echo "mr.robot@pc:\$ Te veo bien Elliot." ; sleep 2
        printf "\n\n"
        read -p "$MENSAJE_READ"
        break
    elif [ $respuesta = "NO" -o $respuesta = "no" ]
    then
        echo "mr.robot@pc:\$ Que mas da.. aprenderas sobre la marcha." ; sleep 2
        printf "\n\n"
        read -p "$MENSAJE_READ"
        break
    else
        echo "mr.robot@pc:\$ Asumo que no entendiste mi pregunta.."
        printf "\n\n"
    fi
    done

    clear
    cat dibujos/trabajo.txt
    echo "fsociety@pc:\$ Bien muchacho a trabajar, hare los ultimos preparativos " ; sleep 3
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    printf "\n\n\n"
    read -p "$MENSAJE_READ"
    find /lib ; sleep 2
    printf "\n\n\n"
    read -p "$MENSAJE_READ"
    clear

}

# Duerme la interaccion para recibir Preguntas
function dormir {
    cat dibujos/trabajando.txt
    while true
	do
	    echo "[Llama a mr.robot para continuar]  "
	    read  -p "elliot@pc:/robot $ " llamar
	    printf "\n"
	    if [ $llamar = "PING_MR_ROBOT" ]
	    then
		clear
		cat dibujos/trabajo.txt
		break
	    else
		clear
		cat dibujos/trabajando.txt
		fortune olvidar
		printf "\n\n"
	    fi
        done
}

function vs_mr_robot {
    setsid mplayer tracks/final.mp3 > /dev/null 2> /dev/null &
    clear
    cat dibujos/trabajo.txt
    echo "mr.robot@pc:\$ C0M0 T3 ATR3V3S A 3ST4R 3N MI C0NTRA!" ; sleep 2
    echo "mr.robot@pc:\$ L0 PAG4R4S CAR000" ; sleep 2
    echo "mr.robot@pc:\$ YO S1G0 TEN1END0 3L CONTR0L DEL SISTEM4 Y SERV1D0R FS0CIETY!" ; sleep 2
    echo "mr.robot@pc:\$ N0 TE P3RMIT1R3 1MPED1R EL ATAQU3!" ; sleep 2
    echo "MAC: (Destruye a mr.robot antes que cometa su ataque)"
    printf "\n\n"
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/hacked.txt
    sleep 0.3
    trapear2
    while true
    do
	read -p "elliot@pc:/fsociety$  " matar
        if [ $matar = "instakill" ]
        then
                sudo kill -9 $$
        fi
    done
}

function vs_dark_army {
    setsid mplayer tracks/final.mp3 > /dev/null 2> /dev/null &
    clear
    cat dibujos/trabajo.txt
    echo "mr.robot@pc:\$ 3LLI0T EXCELENTE" ; sleep 2
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    echo "mr.robot@pc:\$ LA DARK ARMY NOS HA ESTADO VIGILANDO, HACKEARON NUESTROS SERVIDORES..." ; sleep 3
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    echo "mr.robot@pc:\$ RAPIDO ELLIOT DESTRUYELOS Y SACALOS DEL SISTEMAS ANTES DE QUE LO ARRU1NEN T0D0" ; sleep 3
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    echo "MAC: (Destruye Dark Army, tumba el servidor antes que lo saboteen)"
    printf "\n\n"
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/hackedarmy.txt
    sleep 0.3
    trapear
    while true
    do
	read -p "elliot@pc:/fsociety$  " matar
	if [ $matar = "instakill" ]
    	then
		sudo kill -9 $$
    	fi

    done
}

#INSULTAR CUANDO PELEAS CONTRA DARK ARMY
function insultar_army {
	if [ $((intentos % 7)) = 0 -a $intentos -ne 0 ]
		then
			clear
			cat dibujos/hackedarmy.txt
			printf "\n Dark_Army@serverfsociety:$ " ;  fortune darkarmy ; printf "\n"
		else
			printf "\n Dark_Army@serverfsociety:$ " ;  fortune darkarmy ; printf "\n"
    fi
    intentos=$((intentos+1))
    sleep 0.3
}

#INSULTAR CUANDO PELEAS CONTRA MR.ROBOT
function insultar {
        if [ $((intentos % 7)) = 0 -a $intentos -ne 0 ]
                then
                        clear
                        cat dibujos/hacked.txt
			printf "\n MR.R0B0T@serverfsociety:$ " ;  fortune evilrobot ; printf "\n"
                else
			printf "\n MR.R0B0T@serverfsociety:$ " ;  fortune evilrobot ; printf "\n"

    fi
    intentos=$((intentos+1))
    sleep 0.3
}



function final {
    clear
    cat dibujos/christian.txt
    echo "mr.robot@pc:\$ Hola Elliot..." ; sleep 2
    echo "mr.robot@pc:\$ Has llegado muy lejos chico.." ; sleep 2
    echo "mr.robot@pc:\$ Sere honesto contigo.." ; sleep 2
    printf "\n\n"
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/christian.txt
    echo "mr.robot@pc:\$ Todo lo que has hecho no es ninguna simulaci0n" ; sleep 2
    printf "mr.robot@pc:\$ Fue re4l..." ; sleep 1 ; printf ".." ; sleep 0.5 ; printf ".." ; sleep 0.5 ; printf "..\n" ; sleep 0.5
    echo "mr.robot@pc:\$ Implantaste el femtocell en el FBI" ; sleep 2
    echo "mr.robot@pc:\$ Los hackeaste y obtuvimos toda la informacion necesaria" ; sleep 2
    echo "mr.robot@pc:\$ Todo lo que hackeaste es para destruir los edificios de E Corp y edificios importantes en china" ; sleep 2
    echo "mr.robot@pc:\$ Por supuesto.. tengo pensado acabar con dark Army y wh1ter0s3 de un solo golpe" ; sleep 2
    printf "\n\n"
    read -p "$MENSAJE_VICTIMAS"
    clear
    cat dibujos/christian.txt
    echo "mr.robot@pc:\$ Victimas?" ; sleep 2
    echo "mr.robot@pc:\$ Elliot! esta sera una revolucion mundial, debe haber un sacrifio!" ; sleep 2
    echo "mr.robot@pc:\$ Como dicen en el MAC para Crear, hay que destruir!" ; sleep 2
    printf "\n\n"
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/christian.txt
    echo "mr.robot@pc:\$ Me preparare para lanzar el ataque, es muy probable que la dark army o el FBI intervengan" ; sleep 4
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    echo "." ; sleep 0.5
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/trabajo.txt
    echo "mr.robot@pc:\$ En un principio tenia pensado tomar el control de tu cuerpo" ; sleep 2
    echo "mr.robot@pc:\$ Pero confie en ti sabiendo que colaborarias, ambos queremos acabar con las cadenas del mundo" ; sleep 2
    echo "mr.robot@pc:\$ Ahora la gran pregunta es la siguiente ELliot..." ; sleep 2
    printf "\n\n"
    read -p "$MENSAJE_READ"
    clear
    cat dibujos/trabajo.txt
    echo "mr.robot@pc:\$ Eres un 1 o un 0 en este plan?" ; sleep 2
    echo "mac@pc:\$ (Si deseas colaborar o no)"
    echo "mac@pc:\$ (Colaborar implicaria liberar al mundo de sus deudas, pero moririan muchas victimas inocentes)."
    echo "mac@pc:\$ (Negarte implicaria Mantener el orden como este, evitar muertes de inocentes y buscar otra alternativa)"
    while true
    do
    printf "\n\n"
    read -p "elliot@pc:$/fsociety $ [1/0]? " decision

    #Respuesta vacia = SI
    if [ -z "${decision}" ]; then 
    respuesta='no decidio'
    fi

    if [ $decision = "1" -o $decision = "si" ]
    then
	clear
	vs_dark_army
	break
    elif [ $decision = "0" -o $decision = "no" ]
    then
	clear
	vs_mr_robot
	break
    else
	clear
	cat dibujos/trabajo.txt
	echo "mr.robot@pc:\$ Elliot.. sencillo 1 o 0... si o no?" 
    fi
    done
    clear
}

function entregar_item {

    case $1 in
	"femtocell" )
	    clear
	    # cambiar a 555 en caso de querer que pueda eliminar/mover/modificar archivos en ese mundo
	    sudo chmod 777 -R /home/elliot/Arcade/FBI
	    cat dibujos/christian.txt
	    echo "mr.robot@pc:\$ Excelente chico. Esa femtocell que tienes la necesitaremos" ; sleep 2
            echo "mr.robot@pc:\$ Dejame verla y revisar la configuracion que posee" ; sleep 2 
	    printf "\n\n"
	    read -p "$MENSAJE_FEMTOCELL"
            clear
            cat dibujos/femtocell.txt ; sleep 2
	    echo "." ; sleep 0.5
	    echo "." ; sleep 0.5
	    echo "." ; sleep 0.5
            echo "mr.robot@pc:\$ Listo muchacho, ya lo podemos utilizar en la siguiente habitacion" ; sleep 3
            echo "mr.robot@pc:\$ Ya tienes acceso para la siguiente habitacion ahora Elliot" ; sleep 3.5
	    printf "\n\n"
	    read -p "$MENSAJE_READ"
	    clear
	    cat dibujos/trabajo.txt
	    ;;
	"fbi_data" )
	    clear
	    # cambiar a 555 en caso de querer que pueda eliminar/mover/modificar archivos en ese mundo
	    sudo chmod 777 -R /home/elliot/Arcade/Dark_Army
	    sudo touch /home/elliot/Arcade/Dark_Army/j0anna/fbi4   
        sudo chown -R elliot:elliot /home/elliot/Arcade/Dark_Army
        sudo chmod 700 /home/elliot/Arcade/Dark_Army/j0anna

            cat dibujos/christian.txt
	    echo "mr.robot@pc:\$ Bi3n 3lli0t, l0 3stas haciendo" ; sleep 2
	    echo "mr.robot@pc:\$ MuyYy" ; sleep 1
	    echo "mr.robot@pc:\$ B13n" ; sleep 1
	    printf ".." ; sleep 0.5 ; printf ".." ; sleep 0.5 ; printf ".." ; sleep 0.5
	    printf "\n\n"
	    read -p "$MENSAJE_READ"
	    clear
	    cat dibujos/christian.txt
	    echo "mr.robot@pc:\$ Lo siento chico, una pequeña falla.." ; sleep 2
	    echo "mr.robot@pc:\$ ahora entregame la data del FBI" ; sleep 2
	    printf "\n\n"
	    read -p "$MENSAJE_FBI"
	    clear
	    cat dibujos/carpetafbi.txt ; sleep 2
	    echo "mr.robot@pc:\$ Buen trabajo." ; sleep 1
	    echo "mr.robot@pc:\$ Ya con esto puedes continuar a la siguiete habitacion" ; sleep 1
	    echo "." ; sleep 0.5
            echo "." ; sleep 0.5
            echo "." ; sleep 0.5
	    printf "\n\n"
	    read -p "$MENSAJE_READ"
	    clear
	    cat dibujos/trabajo.txt
	    ;;
	"wh1ter0se" )
	    clear
	    final
	    ;;
	"ayudame"|"AYUDAME"|"help"|"Ayuda"|"ayuda"|"Ayudame"|"Help"|"AYUDA" )
	    clear
	    cat dibujos/trabajo.txt
	    fortune ayuda
	    ;;
	* )
	    clear
	    cat dibujos/trabajo.txt
	    fortune error_clave
	    ;;
    esac
}

# Aqui inicia el script
inicio

cat dibujos/trabajo.txt

while true ;
do
    printf "\n[Si tienes alguna contraseña de una PUERTA, Dimela] \nelliot@pc:/fsociety $ "
read -t 20 pregunta
    if [ ! -z $pregunta ]
	then
	entregar_item $pregunta
	continue
    fi
clear
dormir
done
