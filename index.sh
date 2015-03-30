#!/usr/bin/env bash
require() {
  local MODULE_PATH=$(dirname "$(readlink -f ${BASH_SOURCE[1]})")
  local TARGET_PATH=$MODULE_PATH/node_modules/$1

  # if not in the specified directory, check if we have a bash-$1 directory
  if [ ! -d $TARGET_PATH ]; then
    TARGET_PATH=$MODULE_PATH/node_modules/bash-$1
  fi

  if [ ! -e $TARGET_PATH/index.sh ]; then
    echo "unable to locate the $1 package";
    exit 1;
  fi

  source $TARGET_PATH/index.sh
}
