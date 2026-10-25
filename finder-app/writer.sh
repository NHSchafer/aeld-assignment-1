#!/bin/bash


if [ $# -lt 2 ]
then
	echo Insufficient arguments, syntax: writer.sh FILE STRING
	exit 1
fi


WRITEFILE=$1
WRITESTR=$2
DIR=$( dirname $WRITEFILE)

if [ ! -d $DIR ]
then
	echo "directory does not exist; creating directory"
	mkdir -p $DIR 
fi


touch $WRITEFILE

if [ -e $WRITEFILE ]
then
	echo $WRITESTR > $WRITEFILE
	exit 0
else  
	echo Error creating file
	exit 1
fi

