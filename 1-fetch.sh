#!/bin/sh

# Change!
# Script to clone zvaultio in the right branch from local git, following the guide.

. env.sh

# Create LOGDIR
mkdir -p $LOGDIR

# Create zvaultio home dir
mkdir -p $ZVAULT_HOME

cd $ZVAULT_HOME

# clone the zvaultio build repo, to the especified branch
git clone -b $TAG_SRC --depth=1 $GIT_REPO 

cd zvio-build

echo $ZVAULT_HOME
echo $CURRENT_DIR

exit 0
