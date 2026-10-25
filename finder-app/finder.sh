#!/bin/bash

if [ $# -lt 2 ]
then
	echo Too few arguments, syntax: finder.sh PATH SEARCHSTRING
	exit 1
else
	FILESDIR=$1
	SEARCHSTR=$2
fi

if [ -d $FILESDIR ]
then
	NUMFILES=$( find $FILESDIR -type f | wc -l)
	NUMMATCH=$( grep -r $SEARCHSTR $FILESDIR | wc -l)
	echo The number of files are $NUMFILES  and the number of matching lines are $NUMMATCH

	exit 0
else
	echo $FILESDIR is not a directory path
	exit 1
fi

