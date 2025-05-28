if [ $# -gt 1 ];then   #if more than one filename is giver error  message is shwon and exit 
	echo "syntax $0 or <filename>"
	exit 1
fi
count=0
nol=0
if [ $# -eq 1 ];then		#if filename is given
while IFS= read -r line		#read each line from the etxt
do
	nol=`expr $nol + 1`
	for i in $line
	do
		count=`expr $count + 1`
	done
done<$1
else				#if filename not given below code is executed
	echo -n "Enter the txt(enter ctrl +d to exit) :" #-n used to type text on same line as the message shown
	while read line   #read each line
	do
		nol=`expr $nol + 1`
		for i in $line
		do
			count=`expr $count + 1`
		done
	done
fi
echo "Number of words :$count"
echo "Number of lines :$nol"
