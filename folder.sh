#! /bin/bash

d=$1/bin/src

for f in `find $d -iname '*.java' -type f -print`; do
    mv "$f" ${f%.java}.groovy;
done

if [[ -d $d/bin/src/main/java ]]; then
  #statements
  mv $d/bin/src/main/java $d/bin/src/maib/groovy
fi

if [[ -d $d/bin/src/test/java ]]; then
  #statements
  mv $d/bin/src/test/java $d/bin/src/test/groovy
fi
