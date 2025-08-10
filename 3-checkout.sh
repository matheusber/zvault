#!/bin/sh

# Run make target to install initial needed packages

. env.sh

# Script to build base. Logs time it starts and finishes.

log_print $TAG_SRC $LOG $DATE Inicio

pwd

#mv -v $ZVAULT_HOME/zvio-build/build/profiles/freenas $ZVAULT_HOME/zvio-build/build/profiles/zvault
#ln -sf $ZVAULT_HOME/zvio-build/build/profiles/freenas $ZVAULT_HOME/zvio-build/build/profiles/zvault

#cp -v $SRC_DIR/build/profiles/zvault/repos.pyd $ZVAULT_HOME/zvio-build/build/profiles/freenas/repos.pyd
#cp -Rv $ZVAULT_HOME/zvio-build/build/profiles/freenas  $ZVAULT_HOME/zvio-build/build/profiles/zvault

# Change dir
cd $ZVAULT_HOME
cd zvio-build

make checkout

log_print $TAG_SRC $LOG $DATE Final
