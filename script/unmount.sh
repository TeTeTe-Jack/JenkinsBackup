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
Dir=$1

# unmount
umount $Dir

# check unmount
mountpoint -q $cliantDir
if [$?=0];then
  echo "mount failed" 1>&2
  exit 2
fi

exit /b 0