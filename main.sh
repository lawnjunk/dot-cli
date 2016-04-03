#!/bin/bash
#include "gpp-abspath.sh"

#ifndef MAIN
#define MAIN
function main(){
  abspath "$1"
}

main "$1"
#endif
