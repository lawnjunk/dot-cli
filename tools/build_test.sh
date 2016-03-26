#!/bin/bash
[ -d "shpec" ] || mkdir shpec
for file in test/*;do
  gpp -I lib "$file" -o "shpec/$(basename $file)"
done
