#!/bin/sh

# Script to clean build environment

. env.sh

cd $ZVAULT_HOME

rm -rf zvio-build/; chflags -R nosimmutable *; chflags -R nouimmutable *; rm -rf zvio-build/
