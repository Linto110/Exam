if [ $# -ne 1 ];then
	echo "syntax $0 <num>"
exit 1
fi
n=$1
m=0
while [ $n -gt 0 ]
do
d=`expr $n % 10`
n=`expr $n / 10`
m=`expr $d + $m \* 10`
done
echo -n "digits in words : "
while [ "$m" -gt 0 ]
do
	a=`expr $m % 10`
	m=`expr $m / 10`
case $a in 
	0) echo -n "Zero ";; #-n to print number in one line
	1) echo -n "One ";;
	2) echo -n "Two ";;
	3) echo -n "Three ";;
	4) echo -n "Four ";;
	5) echo -n "Five ";;
	6) echo -n "Six ";;
	7) echo -n "Seven ";;
	8) echo -n "Eight ";;
	9) echo -n "Nine ";;
	*) echo -n "Enter valid number";;
esac
done
echo #to prine new line after printing the number
