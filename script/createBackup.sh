#!/bin/bashf

# set parameters
sourcePath=$2
destinatoionPath=$3
today=$(date "+%Y%m%d")

# tar
tar -czvf $destinatoionPath/$today"_jenkinsbackup.tar.gz" $sourcePath

# backup check
if [ ! -e $destinatoionPath/$today"_jenkinsbackup.tar.gz" ];then
  echo "backup failed" 1>&2
  exit 1
fi

exit 0