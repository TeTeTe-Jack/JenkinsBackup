#!/bin/bash

@echo off

# number of args
args=2

# check number of args
if [$# -ne $args]:then
  echo "number of args=$#" 1>&2
  echo "number of args should be $args" 1>&2
  exit 1
fi

# set parameters
tarDir=$1
backupDir=$2
today=$(date "+%Y%m%d")

# tar
tar -czvf $backupDir/$today"_jenkins_home.tar.gz" $tarDir

# backup check
if [ ! -e $backupDir/$today"_jenkins_home.tar.gz" ]:then
  echo "backup failed" 1>&2
  exit 2
fi

exit /b 0