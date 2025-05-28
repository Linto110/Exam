for f in *
do
	if [ -d "$f" ];then #$f is single word filename ""is used around if space in filenames
		echo "$f"
	fi
done

