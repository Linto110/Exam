#add even odd lines from a file to different files
if [ $# -ne 3 ];then
	echo "Syntax $0 <filemane> <filename1> <filename2>"
	exit 1
fi
f=$1
f2=$2
f3=$3
i=1
while read -r line
do
	if [ `expr $i % 2` -eq 0 ];then
		echo "$line">>$f2
	else
		echo "$line">>$f3
	fi
	i=`expr $i + 1`
done<$f
echo
