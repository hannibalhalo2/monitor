#!/usr/bin/env bash
. config.cfg
#variable local
#KEYWRITE=TFAC6T2E9MHSIIH6
INSTALL_DIR=$(pwd)
MEMORIA=$(${INSTALL_DIR}/memoria.sh)
LOADAVG1=$(${INSTALL_DIR}/loadavg.sh)
LOADAVG5=$(${INSTALL_DIR}/loadavg.sh 5)
LOADAVG15=$(${INSTALL_DIR}/loadavg.sh 15)
ROOT=$(${INSTALL_DIR}/disk.sh)
#CON VARIABLE LOCAL
#curl https://api.thingspeak.com/update?api_key=${KEYWRITE}\&field1=${MEMORIA}\&field2=${LOADAVG1}\&field3=${LOADAVG5}\&field4=${LOADAVG15}
#CON VARIABLE DE ENTORNO
curl https://api.thingspeak.com/update?api_key=${WRITEKEY}\&field1=${MEMORIA}\&field2=${LOADAVG1}\&field3=${LOADAVG5}\&field4=${LOADAVG15}\&field5=${ROOT}
