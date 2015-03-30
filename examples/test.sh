#!/usr/bin/env bash
source $(dirname $0)/../index.sh

require colorize

echo -en "$(colorize red)Hello $(colorize yellow)There!\n"
