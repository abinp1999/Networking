#Shell script to rename all ordinary files in a directory with filename.PID of shell
if [ $# -ne 0 ]
then
	echo "syntax error <$0>"
	exit 1
fi


for file in *
do 
	if [ -f $file ]
	then
		newname="$file.$$"
		mv $file $newname
	fi
done
exit 0

<<com
total 20
-rw-rw-r-- 1 ksb ksb  235 May 16 15:23 4.sh
-rw-rw-r-- 1 ksb ksb  213 Mar 24 11:55 Area.java
-rw-rw-r-- 1 ksb ksb  917 Mar 24 11:55 Box.class
-rw-rw-r-- 1 ksb ksb  947 Mar 24 11:55 Example.class
drwxrwxr-x 2 ksb ksb 4096 Mar 24 11:55 exercise1




ksb@ksb-ThinkCentre-Edge72:~/aswin/JAVA$ ls -l
total 20
-rw-rw-r-- 1 ksb ksb  235 May 16 15:23 4.sh.12836
-rw-rw-r-- 1 ksb ksb  213 Mar 24 11:55 Area.java.12836
-rw-rw-r-- 1 ksb ksb  917 Mar 24 11:55 Box.class.12836
-rw-rw-r-- 1 ksb ksb  947 Mar 24 11:55 Example.class.12836
drwxrwxr-x 2 ksb ksb 4096 Mar 24 11:55 exercise1
com

