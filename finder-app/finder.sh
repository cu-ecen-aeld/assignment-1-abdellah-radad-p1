#!/bin/bash
if [ $# -lt 2 ]
then
	echo "failed: expected two arguments, got $#."
	exit 1
fi
if [ -d $1 ]
then
	echo "The number of files are $(grep -lr $2 $1 | wc -l) and the number of matching lines are $(grep -r $2 $1 | wc -l)"
	exit 0
else
	echo "No directory: $1"
	exit 1
fi

