if [ $# -ne 2 ];then
	echo "syntax $0 <num1> <num2>"
	exit 1
fi
n1=$1
n2=$2
while [ $n1 -le $n2 ]
do
	f=1
	i=2
	while [ $i -le `expr $n1 / 2` ]
	do
		if [ `expr $n1 % $i` -eq 0 ];then
			f=0
			break;
		fi
		i=`expr $i + 1`
	done
	if [ $f -eq 1 ];then
		echo -n "$n1 "
	fi
	n1=`expr $n1 + 1`
done
echo
