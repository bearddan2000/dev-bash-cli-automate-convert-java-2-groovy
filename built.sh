#! /bin/bash

function replace_readme_str() {
  #statements
  local file=$1/bin/build.gradle
  local old=$2
  local new=$3

  perl -pi.bak -0 -e "s/${old}/${new}/" $file
  rm -f $1/bin/build.gradle.bak
}

replace_readme_str $1 "java", "groovy"

replace_readme_str $1 "dependencies {\n" "dependencies {\nimplementation 'org.codehaus.groovy:groovy-all:3.0.7'\n"
