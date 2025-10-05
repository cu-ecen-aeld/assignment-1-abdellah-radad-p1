#!/bin/bash
if [ $# -lt 2 ]
then 
	echo "failed: expected two arguments, got $#."
	exit 1
fi

if [ -e $1 ]
then
	echo $2 >> $1
else
	mkdir -p $(dirname $1)
	touch $1
	echo $2 >> $1
fi
