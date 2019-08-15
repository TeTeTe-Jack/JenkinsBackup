#!/bin/bash

@echo off

# number of args
args=4

# check number of args
if [$# -ne $args];then
  echo "number of args=$#" 1>&2
  echo "number of args should be $args" 1>&2
  exit 1
fi

# set parameters
ipaddr=$1
serverDir=$2
cliantDir=$3
password=$4

# mount
mount -t cifs //$ipaddr/$serverDir $cliantDir -o pass=$password

# mount check
mountpoint -q $cliantDir
if [$?=1];then
  echo "mount failed" 1>&2
  exit 2
fi

exit /b 0