#! /bin/bash

for d in `ls -la | grep ^d | awk '{print $NF}' | egrep -v '^\.'`; do

   ./readme.sh $d

  ./folder.sh $d

  ./built.sh $d

  new_folder=`echo $d | sed 's/java/groovy/g'`

  mv $d $new_folder

done
