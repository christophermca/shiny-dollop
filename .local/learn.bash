#!/bin/bash

learn() {
  local GREEN="\e[32m";
  local RED="\e[31m";
  local NORMAL="\e[0m";
  local FILE_PATH="${BASH_SOURCE:-0}"
  local PARENT_PATH="$(dirname $(dirname $FILE_PATH))"


  print_list() {
    echo -e "${GREEN}Available Options:\n---\n"

    echo -e "$(ls $1 -1) \n"
  }

  report_error() {
    echo -e "\"${RED}$1${NORMAL}\" is not an option"
    print_list $PARENT_PATH
  };

  found_subject() {
    local language=$1
    local language_path=$PARENT_PATH/$language
    echo -e "Lets Learn ${GREEN}$language${NORMAL}!\n"

    [[ -d $language_path ]] && cd $language_path && print_list $language_path
  };


  ###
  # `$#` ....  returns number of parameters
  # `#@` ....  returns parameters
  ###
  if (( $# == 1 )); then
    # Bash does not have a try/catch statement closest thing is to use `||`
    # do this command, if it fails, then do that
    found_subject $1 || report_error $1
  else
    print_list $PARENT_PATH
  fi
}
