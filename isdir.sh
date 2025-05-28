if [ $# -ne 1 ];then
	echo "syntax is $0 <filename>"
	exit 
fi
fname=$1
if [ -d $fname ];then
	echo "$file is a directory"
else
	echo "$fname not a directory"
fi

