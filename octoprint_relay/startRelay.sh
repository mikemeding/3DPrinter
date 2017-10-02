#!/bin/bash

case "$1" in
	1)
		echo "starting relay 1"
		/home/pi/switchWait.sh 1 7
	;;
	2)
		echo "starting relay 2"
		/home/pi/switchWait.sh 5 3
	;;
	3)
		echo "starting relay 3"
		/home/pi/switchWait.sh 26 22
	;;
	4)
		echo "starting relay 4"
		/home/pi/switchWait.sh 27 25
	;;
	*)
	echo $"Usage: $0 {relay [1-4]}"
esac
