#9. Shell script to delete all lines if a file containing word linux
if [ $# -eq 0 ]
then
	echo "syntax error <$0> <filename>"
	exit 1
fi


file=$1

ter=`tty`
exec < $file

while read line
do
echo $line | grep linux > /dev/null
	if [ $? -eq 0 ]
	then
		continue
	fi	
	echo $line >> file1
done

mv file1 $file

exec < $ter
	
