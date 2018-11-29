#/bin/bash

cat /dev/null > crearequipos.json
echo "{\n" >> crearequipos.json
echo "\"equipos\": [\n" >> crearequipos.json
for i in `seq 0 20`
do
   cat ./equipo$i.json >> crearequipos.json &&
   echo "," >> crearequipos.json
done
sed -i '$d' crearequipos.json
echo "]\n" >> crearequipos.json
echo "}\n" >> crearequipos.json
