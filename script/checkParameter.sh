#!/bin/bash

# check number of args
if test $# -eq 0;then
  echo "number of args=$# or arg is blank" 1>&2
  exit 1
fi

if test $# -gt 1 ;then
  echo "number of args=$#" 1>&2
  echo "Try with 1 arg" 1>&2
  exit 2
fi

# check none
if test $1 -eq 'none';then
  echo "arg is none" 1>&2
  exit 3
fi

exit /b 0