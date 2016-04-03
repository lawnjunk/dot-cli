#!/bin/bash
function clean_script(){
  local file temp_file 
  file="$1"
  temp_file=$(date +"%s")
  touch $temp_file
    sed -e '2,$ {/^ *$/d ; /^ *#/d ; /^[ \t] *#/d ; /*^/d ; s/^[ \t]*// ; s/*[ \t]$// ; s/ $//}' $file > $temp_file
    mv $temp_file $file
}
