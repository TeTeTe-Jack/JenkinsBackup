#!/bin/bash

@echo off

# number of args
args=1

# check number of args
if [$# -ne $args];then
	  echo "number of args=$#" 1>&2
	    echo "number of args should be $args" 1>&2
	      exit 1
fi

# set parameters
destinatoionPath=$1
today=$(date "+%Y%m%d")

# delete previous backup files
cd $destinatoionPath
ls | grep -v -E ^$today | xargs rm -f

exit /b 0
