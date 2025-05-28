#counting words and lines froma while using single while loop
if [ $# -gt 1 ];then
        echo "syntax $0 or <filename>"
        exit 1
fi
count=0
nol=0
if [ $# -eq 1 ];then		#if file name given then filename is assigned to a variable
	file=$1
else
	echo -n "Enter the lines(Exit -> ctrl+d ):"
	cat > text.txt   	#read the text from termianl into a file
	file="text.txt"  	# assign the read file to a variable
fi
while IFS= read -r line   	# reads line by line
do
	nol=`expr $nol + 1`   	#counts the line
	for i in $line    	#takes word from a line (i in line means a word from the line) 
	do
		count=`expr $count + 1` #count the words
	done
done<$file      		#gives the filename 
echo "Number of words :$count"
echo "Number of lines :$nol"
