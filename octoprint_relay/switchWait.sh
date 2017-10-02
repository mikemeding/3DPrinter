#!/bin/bash
if [ "$#" -ne 2 ];
then
	echo "invalid argument list"
	echo "./command.sh (listen on pin #) (toggle pin #)"
	exit 1
fi

while :
do
	gpio wfi $1 falling
	case $(gpio read $2) in
	0)
		echo "toggle relay pin $2 ON"
		gpio write $2 1 
	;;
	1)	
		echo "toggle relay pin $2 OFF"
		gpio write $2 0
	;;
	esac
	sleep 1
done
