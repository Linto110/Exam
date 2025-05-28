#if directory open and show the file list
for f in *
do
	if [ -d $f ];then
		echo -n "Directory -$f:"
		cd $f
		ls
		cd ..
	fi
done
echo #newline
