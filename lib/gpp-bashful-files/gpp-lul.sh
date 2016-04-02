ifndef LUL
define LUL
source ~/.dot/all/source/bash/bashful-files
for file in *; do
  fn=$(filename $file)
  fn_upper=$(echo $fn |upper)
  gpp_file="gpp-$file"

  touch "$gpp_file"
  echo "ifndef $fn_upper" >> "$gpp_file"
  echo "define $fn_upper" >> "$gpp_file"
  cat $file               >> "$gpp_file"
  echo "endif"            >> "$gpp_file"
done

endif
