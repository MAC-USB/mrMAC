import itertools
import fileinput
import random
from random import randint
from random import choice
import os
import pwd
import crypt
import string
from string import lowercase
import sys

#FUNCIONES:

# Crea la ruta y le mete n archivos y n carpetas

#Se leen palabras de un diccionaro para crear las carpetas crap

f = open('/etc/dictionaries-common/words','r')

crap = f.readlines()
respaldo = crap
f.close()
random.shuffle(crap)

#Funcion que dado un numero, devuelve un numero aleatorio de n cifras
def random_N_digitos(n):
	rango_ini = 10**(n-1)
	rango_fin = (10**n)-1
	return randint(rango_ini, rango_fin)

def DirBasura(ruta, n):
	if not os.path.exists(ruta):
		os.mkdir(ruta)

	for i in range(int(n)):
		os.mkdir(ruta + '/' + crap.pop().strip() )
		archivo = open(ruta + '/' + crap.pop().strip() , 'w', 0)	

# Crea archivo con N lineas basura
def CrearArchivo(ruta, n):
    archivo = open(ruta, 'w', 0)
    for i in range(int(n)):
        archivo.write(crap.pop().strip() + '\n')


serverfsociety_passwd = crypt.crypt('mrrobot','22')
elliot_passwd = crypt.crypt('fsociety','22')

# Permisos para los usuarios
os.system('echo "serverfsociety ALL=NOPASSWD: /bin/chmod" >> /etc/sudoers')
os.system('echo "serverfsociety ALL=NOPASSWD: /bin/kill" >> /etc/sudoers')
os.system('echo "elliot ALL=NOPASSWD: /bin/kill" >> /etc/sudoers')

# mensaje de bienvenida para fsociety
# welcome_msg = "echo \"Chico, necesito saber si estas en buena forma para seguir con nuestros planes\""
# welcome_msg1 = "echo \"te ire dando retos que deberas cumplir en la tty.\""
# welcome_msg2 = "echo \"si haces bien, tendras una clave la cual podras insertar aqui.\""

os.system('useradd -s /bin/bash -p '+ serverfsociety_passwd +' -m serverfsociety')
os.system('useradd -s /bin/bash -p '+ elliot_passwd +' -m elliot')
# Se agrega al suddoers el user de serverfsociety
os.system('usermod -a -G sudo serverfsociety')
print 'CREANDO USUARIO elliot y serverfsociety'


#Se crean los directorios habitaciones principales

os.system('mkdir /home/elliot/Arcade/; chmod 755  /home/elliot/Arcade/')
os.system('mkdir /home/elliot/Arcade/E_Corp; chmod 777  /home/elliot/Arcade/E_Corp')
os.system('mkdir /home/elliot/Arcade/FBI; chmod 700  /home/elliot/Arcade/FBI')
os.system('mkdir /home/elliot/Arcade/Dark_Army; chmod 700  /home/elliot/Arcade/Dark_Army')

print 'CREANDO CARPETAS DE HABITACIONES'

#Asignacion de aliases 

os.system("echo \"alias ls='ls --color'\" >> /home/elliot/.bashrc")
os.system("echo \"alias instakillmrrobot='python /home/invitado/admision/credits.py'\" >> /home/elliot/.bashrc")
# os.system('echo ' + welcome_msg +  ' >> /home/elliot/.bashrc')
# os.system('echo ' + welcome_msg1 +  ' >> /home/elliot/.bashrc')
# os.system('echo ' + welcome_msg2 +  ' >> /home/elliot/.bashrc')
os.system('echo DOG=Flipper >> /home/elliot/.bashrc') # Se le asigna la clave a la variable $DOG
# Comentando para pruebas, usar en el script final
#os.system('echo "" > /etc/motd')
#os.system('echo "" > /var/run/motd.dynamic')

print 'ASIGNACION DE ALIASES y SUS RESPECTIVOS .bashrc'

###HABITACION#####

os.system('mkdir /home/elliot/Habitacion; chmod 755 /home/elliot/Habitacion')
os.system('touch /home/elliot/Habitacion/.wellick')
os.system("echo \"samesmail\" >> /home/elliot/Habitacion/.wellick") #PRIMERA PARTE (CAT) samesemail
CrearArchivo('/home/elliot/Habitacion/pentest', 404) # Lineas de pentest 404


print 'SE CREO LA HABITACION'

os.system('cp ./answers_checker.sh /opt/answers_checker.sh')
os.system('touch /home/elliot/.bash_history')
os.system("echo \"PROMPT_COMMAND='history -w && /opt/answers_checker.sh'\" >> /home/elliot/.bashrc")
# Guarda el archivo de chequeo de respuestas en un directorio accesible
# Ejecuta el script con cada comando.
# os.system('echo PROMPT_COMMAND="/opt/answers_checker.sh" >> /home/elliot/.bashrc')