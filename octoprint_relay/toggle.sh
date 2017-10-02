#!/bin/bash
if [ $(gpio read $1) -eq 1 ]
then
	gpio write $1 0
else
	gpio write $1 1
fi
