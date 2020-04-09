a="$(df /dev/sda5 | tail -n +2 | head -n 1 | awk '{print $5}')"
b="$(cut -d'%' -f1 <<<$a)"
echo $b
#crar fichero de 10gb
#dd if=/dev/urandom of=random.img count=1024 bs=10M

