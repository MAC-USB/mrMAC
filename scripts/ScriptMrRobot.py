#!/usr/bin/python

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
def CrearArchivo(ruta, n,):
    archivo = open(ruta, 'w', 0)
    for i in range(int(n)):
        archivo.write(crap.pop().strip() + '\n')

######################## CONSTRUCCION HABITACIONES ########################################################################

##############################
# HABITACION NUMERO 1 (E_Corp)#
##############################



#Garantizo que no existan las siguienets carpetas y luego las creo

os.system('find /home/elliot/Arcade/E_Corp -name _ZOR | xargs rm -rf')
os.system('find /home/elliot/Arcade/E_Corp -name _DAE | xargs rm -rf')
os.system('find /home/elliot/Arcade/E_Corp -name elpscrk  | xargs rm -rf')

os.system('mkdir -p /home/elliot/Arcade/E_Corp/_ZOR/_REA')
os.system('mkdir -p /home/elliot/Arcade/E_Corp/_DAE/_KUL')
os.system('touch /home/elliot/Arcade/E_Corp/_ZOR/##PONME_TODO')
os.system('touch /home/elliot/Arcade/E_Corp/_ZOR/_REA/##ESO_PA_LANTE')
os.system('touch /home/elliot/Arcade/E_Corp/_DAE/##PONME_TODO')
os.system('touch /home/elliot/Arcade/E_Corp/_DAE/_KUL/##ESO_PA_LANTE')

os.system('touch /home/elliot/Arcade/E_Corp/elpscrk')
os.system('touch /home/elliot/Arcade/E_Corp/DDoS_Attack')
os.system('touch /home/elliot/Arcade/E_Corp/estogeneraunnumeroprimo')
lineas = respaldo

#Creo el contenido del archivo elpscrk para su pregunta
# elpscrk significa Elliot's password Cracker

for i in range(50):
	os.system('echo "'+(((lineas.pop()).lower()).replace("'",":")).strip("\n")+'" >> /home/elliot/Arcade/E_Corp/elpscrk')

for i in range(207):
	str0 = "".join(choice(lowercase) for j in range(45))
	os.system('echo ":'+str(random_N_digitos(4))+str0+'" >> /home/elliot/Arcade/E_Corp/elpscrk')
os.system('echo ":5432accb elpscrk significa elliotspasswordcracker" >> /home/elliot/Arcade/E_Corp/elpscrk')
for i in range(207):
	str0 = "".join(choice(lowercase) for j in range(30))
	os.system('echo ":'+str(random_N_digitos(4))+str0+'" >>  /home/elliot/Arcade/E_Corp/elpscrk')
os.system('echo ":1322eccb acabasdeconseguirlaclave_hellofriend" >>  /home/elliot/Arcade/E_Corp/elpscrk')
for i in range(207):
	str0 = "".join(choice(lowercase) for j in range(34))
	os.system('echo ":'+str(random_N_digitos(4))+str0+'" >>  /home/elliot/Arcade/E_Corp/elpscrk')
for i in range(307):
	str0 = "".join(choice(lowercase) for j in range(24))
	os.system('echo ":'+str(random_N_digitos(4))+str0+'" >>  /home/elliot/Arcade/E_Corp/elpscrk')
os.system('echo ":1352eccba quizastodoseaunatrampa" >>  /home/elliot/Arcade/E_Corp/elpscrk')
for i in range(300):
	str0 = "".join(choice(lowercase) for j in range(27))
	os.system('echo ":'+str(random_N_digitos(4))+str0+'" >>  /home/elliot/Arcade/E_Corp/elpscrk')
for i in range(50):
	os.system('echo "'+(((lineas.pop()).lower()).replace("'",":")).strip("\n")+'" >>  /home/elliot/Arcade/E_Corp/elpscrk')

print " --SE CARGO LA HABITACION E_CORP"
DirBasura("/home/elliot/Arcade/E_Corp" , 502)
#Fin de la habitacion E_CORP

######################## Fin de la HABITACION E_CORP ########################################################################

##############################
# HABITACION NUMERO 2 ARCADE#
##############################

os.system('rm -rf /home/elliot/Arcade/FBI/logic-b0mb')
os.system('touch /home/elliot/Arcade/FBI/logic-b0mb')
for i in range(99):
	str0 = "".join(choice(lowercase) for j in range(6))
	os.system('echo '+str0+' >>  /home/elliot/Arcade/FBI/logic-b0mb')
os.system('echo krista >>  /home/elliot/Arcade/FBI/logic-b0mb')     #Essta es la linea del medio
for i in range(100):
	str0 = "".join(choice(lowercase) for j in range(6))
	os.system('echo '+str0+' >>  /home/elliot/Arcade/FBI/logic-b0mb')

os.system('rm -rf Taquirule/templo_E/pyth0n') 
os.system('cp /home/elliot/Arcade/FBI/logic-b0mb /home/elliot/Arcade/FBI/pyth0n')
os.system('chmod 000 /home/elliot/Arcade/FBI/pyth0n ; chown elliot:elliot /home/elliot/Arcade/FBI/pyth0n') 


#Cosas de la pregunta 17
masks=['elliot','habitacion','hackeo','arcade','juego','juanteamo','mrrobot', 'ecorp',\
           'fbi','fsociety','servidores', 'lenguajes']

words_from_masks = []
for i in range(1,300):
    for m in masks:	
        num = i % 5
        if num != 0:
            words_from_masks.append(m + str(random_N_digitos(int(num))))

words_from_masks = list(set(words_from_masks))
respaldo_wfms = words_from_masks

#Archivo en el que deberan mostrar el contenido de los archivos que esten
#contenidos en el 

os.system('rm -rf /home/elliot/Arcade/FBI/runtime-error')
os.system('touch /home/elliot/Arcade/FBI/runtime-error')

for w in words_from_masks:
	os.system('echo '+ w + ' >> /home/elliot/Arcade/FBI/runtime-error')	
os.system('echo dont-delete-me.ko >> /home/elliot/Arcade/FBI/runtime-error')
for i in range(800):
	os.system('echo "'+(((lineas.pop()).lower()).replace("'",":")).strip("\n")+'" >> /home/elliot/Arcade/FBI/runtime-error')
os.system('touch /home/elliot/Arcade/FBI/dont-delete-me.ko')
os.system('echo k3rnelp4nic >> /home/elliot/Arcade/FBI/dont-delete-me.ko')


#_Pipe pregunta (12)

os.system('rm -rf /home/elliot/Arcade/FBI/_Pipe')
os.system('mkdir -p /home/elliot/Arcade/FBI/_Pipe')
babymario='bomb'
babymario_l = map(''.join, itertools.product(*zip(babymario.upper(), babymario.lower())))
dir_babymario = ['_THE','_LEGEND','_OF','_MR','_MAC','_ROBOT']

for z in babymario_l:  #Se mina todo el directorio _TINGLES (nivel 1)
	os.system('touch /home/elliot/Arcade/FBI/_Pipe/'+ z) 
for z in dir_babymario:
	os.system('mkdir -p /home/elliot/Arcade/FBI/_Pipe/'+z)
	for a in babymario_l:  #Se minan todos los directorios del segundo nivel
		os.system('touch /home/elliot/Arcade/FBI/_Pipe/'+z+'/'+a)
	for x in dir_babymario:
		os.system('mkdir -p /home/elliot/Arcade/FBI/_Pipe/'+z+'/'+x)	
		for y in dir_babymario:
			os.system('mkdir -p /home/elliot/Arcade/FBI/_Pipe/'+z+'/'+x+'/'+y)
			for a in babymario_l:  #Se minan todos los directorios del cuarto nivel
				os.system('touch /home/elliot/Arcade/FBI/_Pipe/'+z+'/'+x+'/'+y+'/'+a)

os.system('touch /home/elliot/Arcade/FBI/_Pipe/_THE/_LEGEND/b0mb')
os.system('touch /home/elliot/Arcade/FBI/_Pipe/_OF/_THE/bomB')
os.system('touch /home/elliot/Arcade/FBI/_Pipe/_MR/_MAC/BomB')
os.system('touch /home/elliot/Arcade/FBI/_Pipe/_ROBOT/_ROBOT/boMb')

#carpetas que comienzen con - para la pregunta (11)

os.system('mkdir -p  /home/elliot/Arcade/FBI/_ANONYMOUS')
os.system('touch /home/elliot/Arcade/FBI/_ANONYMOUS/-elliot')
os.system('touch /home/elliot/Arcade/FBI/-elliot')
os.system('touch /home/elliot/Arcade/FBI/-eas')
os.system('touch /home/elliot/Arcade/FBI/-is')
os.system('touch /home/elliot/Arcade/FBI/-the')
os.system('mkdir -p /home/elliot/Arcade/FBI/-HERO')
os.system('touch /home/elliot/Arcade/FBI/-HERO/-of')
os.system('touch /home/elliot/Arcade/FBI/-HERO/-this')
os.system('touch /home/elliot/Arcade/FBI/-HERO/-room')

DirBasura('/home/elliot/Arcade/FBI' , 800)
print "--SE CARGO LA HABITACION FBI"

######################## Fin del CASTILLO DE FBI ########################################################################

#################################
# HABITACION NUMERO 3 (DARK_ARMY)#
#################################

# Pregunta N 16
# Garantizo que este la carpeta y le agrego lo que necesito
os.system('mkdir /home/elliot/Arcade/Dark_Army/_stage3; chown elliot:elliot /home/elliot/Arcade/Dark_Army/_stage3')
os.system('touch /home/elliot/Arcade/Dark_Army/_stage3/cisco')
os.system('touch /home/elliot/Arcade/Dark_Army/_stage3/seguro')
os.system('touch /home/elliot/Arcade/Dark_Army/_stage3/deseas')
os.system('touch /home/elliot/Arcade/Dark_Army/_stage3/delete')
os.system('touch /home/elliot/Arcade/Dark_Army/_stage3/elliot')

# Pregunta N 18
# Genera un archivo j0anna con permisos 700 y luego una carpera _zer0es con permisos 777
os.system('touch /home/elliot/Arcade/Dark_Army/j0anna && chmod 700 /home/elliot/Arcade/Dark_Army/j0anna')
os.system('mkdir /home/elliot/Arcade/Dark_Army/_zer0es && chmod 777 /home/elliot/Arcade/Dark_Army/_zer0es')

aux = respaldo_wfms
aux1 = respaldo_wfms
aux2 = respaldo_wfms

for i in range(50):
    os.system('touch /home/elliot/Arcade/Dark_Army/_zer0es/' + aux.pop())


for i in range (10):
    os.system('touch /home/elliot/Arcade/Dark_Army/_zer0es/' + aux1.pop()[:4])
    os.system('touch /home/elliot/Arcade/Dark_Army/_zer0es/' + aux2.pop()[:6])

os.system('rm -rf /home/elliot/Arcade/Dark_Army/_v1ew')
os.system('rm -rf /home/elliot/Arcade/Dark_Army/_s0urce')
lineas = respaldo
os.system('mkdir /home/elliot/Arcade/Dark_Army/_v1ew')
os.system('mkdir /home/elliot/Arcade/Dark_Army/_s0urce; chown elliot:elliot /home/elliot/Arcade/Dark_Army/_s0urce')
for i in range(800):
	os.system('touch /home/elliot/Arcade/Dark_Army/_v1ew/'+(((lineas.pop()).lower()).replace("'",":")).strip("\n"))
for i in range(600):
	os.system('touch /home/elliot/Arcade/Dark_Army/_s0urce/'+(((lineas.pop()).lower()).replace("'",":")).strip("\n"))

os.system('cp -r /home/elliot/Arcade/Dark_Army/_v1ew/ /home/elliot/Arcade/Dark_Army/_v1ew2')
os.system('cp -r /home/elliot/Arcade/Dark_Army/_s0urce/ /home/elliot/Arcade/Dark_Army/_s0urce2')
	

#archivo random que tendra 30 lineas
os.system('rm -rf /home/elliot/Arcade/Dark_Army/legacy')
os.system('touch /home/elliot/Arcade/Dark_Army/legacy')
for i in range(30):
    os.system("echo Super EAS legacy >> /home/elliot/Arcade/Dark_Army/legacy")

#Colocandole 30K a un archivo
os.system('mkdir -p /home/elliot/Arcade/Dark_Army/BOSS/MRROBOT/IS/IN/THIS/')
os.system('touch /home/elliot/Arcade/Dark_Army/BOSS/MRROBOT/IS/IN/THIS/m3tadata')
for i in range(9999):
    os.system("echo aa >> /home/elliot/Arcade/Dark_Army/BOSS/MRROBOT/IS/IN/THIS/m3tadata")
os.system('echo "CREETE QUE ERES SUPER EAS... DI EN VOZ ALTA: SOY EAS" >> /home/elliot/Arcade/Dark_Army/BOSS/MRROBOT/IS/IN/THIS/m3tadata')


os.system('rm -rf /home/elliot/Arcade/Dark_Army/frederic')
os.system('rm -rf /home/elliot/Arcade/Dark_Army/tanya')

os.system('touch /home/elliot/Arcade/Dark_Army/frederic')
os.system('touch /home/elliot/Arcade/Dark_Army/tanya')

words_from_masks = respaldo_wfms
for w in words_from_masks:
    	os.system('echo '+ w + '>> /home/elliot/Arcade/Dark_Army/frederic')

palabra_distinta= 'wh1ter0se'
aux = words_from_masks + [palabra_distinta]

random.shuffle(aux)        
for w in aux:
    	os.system('echo '+ w + '>> /home/elliot/Arcade/Dark_Army/tanya')



print '---SE CARGO LA HABITACION DARK_ARMY'
DirBasura('/home/elliot/Arcade/Dark_Army/' , 800)
#Fin DE LA HABITACION DARK_ARMY
######################## FIN DE LA HABITACION DARK_ARMY ###################################################################