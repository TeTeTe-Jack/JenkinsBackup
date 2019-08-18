#!/bin/bash

# set parameters
destinatoionPath=$1
today=$(date "+%Y%m%d")

# delete previous backup files
cd $destinatoionPath
ls | grep -v -E ^$today | xargs rm -f

exit 0
