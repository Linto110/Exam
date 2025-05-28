if [ $# -ne 1 ];then
	echo "syntax $0 <filename>"
	exit 1
fi
while read -r line
do
	for i in $line
	do
		j=$(echo "$i" | cut -c1) #to extract 1st charater
		case "$j" in
			a|A) echo "the word $i starts with 'a'";;
			e|E) echo "The word $i starts with 'e'";;
			i|I) echo "The word $i starts with 'i'";;
			o|O) echo "The word $i starts with 'o'";;
			u|U) echo "The word $i starts with 'u'";;
		esac
	done
done<"$1"
