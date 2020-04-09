if [ $# = 0 ]
then
echo $( cat /proc/loadavg | cut -d ' ' -f 1)
fi

if [ "${1}" == "1" ]
then
echo $( cat /proc/loadavg | cut -d ' ' -f 1)
elif [ "${1}" == "5" ]
then
echo $( cat /proc/loadavg | cut -d ' ' -f 2)
elif [ "${1}" == "15" ]
then
echo $( cat /proc/loadavg | cut -d ' ' -f 3)
fi
