#ifndef SAY_HELLO
#define SAY_HELLO
function say_hello(){
  if [ "$1" ];then 
    local name="$1" 
  else
    local name="world" 
  fi

  echo "hello $name"
}

#endif
