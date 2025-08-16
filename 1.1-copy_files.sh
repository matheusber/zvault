#!/bin/sh

# Script to copy changed files needed for building zvaultio.

. env.sh

cp -Rv $SRC_DIR/* $ZVAULT_HOME/zvio-build/

#Adjust to the right ARCH

if [ $ARCH = "AMD64" ]; then
  grep -v "^#CHANGE_ARM64" $SRC_DIR/build/config/env.pyd | sed -e 's/#CHANGE_AMD64#//g' > $ZVAULT_HOME/zvio-build/build/config/env.pyd
  sed -e 's/#CHANGE_HERE#/amd64/g' $SRC_DIR/build/profiles/zvault/config.pyd > $ZVAULT_HOME/zvio-build/build/profiles/zvault/config.pyd
  
else
  grep -v "^#CHANGE_AMD64" $SRC_DIR/build/config/env.pyd | sed -e 's/#CHANGE_ARM64#//g' > $ZVAULT_HOME/zvio-build/build/config/env.pyd
  sed -e 's/#CHANGE_HERE#/arm64/g' $SRC_DIR/build/profiles/zvault/config.pyd > $ZVAULT_HOME/zvio-build/build/profiles/zvault/config.pyd

fi
