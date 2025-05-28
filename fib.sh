#Fibonocci numbers upto a limit
if [ $# -ne 1 ];then
	echo "syntax $0 <num>"
	exit 1
fi
n1=0
n2=1
num=$1
i=1
while [ $i -le $num ]
do
	echo -n "$n1 "
	n3=`expr $n1 + $n2`
	n1=$n2
	n2=$n3
	i=`expr $i + 1`
done
echo
