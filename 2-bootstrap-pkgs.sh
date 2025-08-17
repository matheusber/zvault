#!/bin/sh

# Run make target to install initial needed packages

. env.sh

# Change dir
cd $ZVAULT_HOME
cd zvio-build

# Script to build base. Logs time it starts and finishes.

log_print $TAG_SRC $LOG $DATE Inicio

make bootstrap-pkgs

# Update pip as suggested by install script
pip3 install --upgrade pip

log_print $TAG_SRC $LOG $DATE Final

exit 0
