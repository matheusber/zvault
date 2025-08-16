#!/bin/sh

# Run make target to install initial needed packages

. env.sh

# Script to build base. Logs time it starts and finishes.

log_print $TAG_SRC $LOG $DATE Inicio

# Change dir
cd $ZVAULT_HOME
cd zvio-build

make release PROFILE=zvault PRODUCT=zVault Train=zVault-13

log_print $TAG_SRC $LOG $DATE Final
