#take all file and all from the current directory checks if its a directory not if yes then prints its name 
for f in *
do
	if [ -d "$f" ];then #$f is single word filename ""is used around if space in filenames
		echo "$f"
	fi
done

