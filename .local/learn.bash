#!/bin/bash

learn() {
  local GREEN="\e[32m";
  local RED="\e[31m";
  local NORMAL="\e[0m";


  report_error() {
    echo -e "\"${RED}$1${NORMAL}\" is not an option\n\n${GREEN}Available Options:"
    ls -1 ~/Repos/_learning/
  };

  found_subject() {
    echo -e "Lets Learn ${GREEN}$1${NORMAL}!\n"
    cd ~/Repos/_learning/$1
    echo "Projects:"
    ls .
  };

  if (( $# == 1 )); then
2   found_subject $1 || report_error $1
  else
    cd ~/Repos/_learning/ && ls
    ## include prompt to get subject. Recursivly run through
  fi
}
