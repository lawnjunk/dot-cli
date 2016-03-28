#!/bin/bash

#include "say_hello.sh"

#ifndef MAIN
#define MAIN
function main(){
  say_hello "$1"
}

main "$1"
#endif
