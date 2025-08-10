#!/bin/sh

# Script to copy changed files needed for building zvaultio.

. env.sh

#cp -v $SRC_DIR/build/tools/check-host.py $ZVAULT_HOME/zvio-build/build/tools/check-host.py
#cp -v $SRC_DIR/Makefile $ZVAULT_HOME/zvio-build/Makefile
#cp -v $SRC_DIR/Makefile.inc1 $ZVAULT_HOME/zvio-build/Makefile.inc1
cp -Rv $SRC_DIR/* $ZVAULT_HOME/zvio-build/