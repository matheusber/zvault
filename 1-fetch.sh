#!/bin/sh

# Change!
# Script to clone zvaultio from local git, following the guide.
# In the end it changes the version of the code

. env.sh

# Create LOGDIR
mkdir -p $LOGDIR

# Create zvaultio home dir
mkdir -p $ZVAULT_HOME

cd $ZVAULT_HOME

# clone the zvaultio build repo
git clone --depth=1 $GIT_REPO 

cd zvio-build

# Save current dir for future references
CURRENT_DIR=`pwd`

echo $ZVAULT_HOME
echo $CURRENT_DIR

# As told in the guide, "switch to the zvio-13.3 branch"
git checkout -b $TAG_SRC

exit 0
#########################
# fetch all source codes
make -C /usr/tools update

# Back to initial dir
cd $CURRENT_DIR

echo "Copy R5S conf files"
cp $SRC_DIR/R5S_USB.conf $SRC_DIR/R5S_UBOOT.conf $SRC_DIR/R5S_EDK2.conf /usr/tools/device

echo "Copy custom rc file"
cp $SRC_DIR/usr-core-src-etc-rc /usr/core/src/etc/rc

#echo "Copy custom .conf files"
#cp $SRC_DIR/extras.conf $SRC_DIR/plugins.conf $SRC_DIR/ports.conf /usr/tools/config/$VERSION/

# Copy R5S boot files
echo "Copy R5S edk2 files"
mkdir -p /usr/local/share/edk2/
cp -Rv edk2-nanopi-r5s /usr/local/share/edk2/

# install needed packages
echo pkg install u-boot-nanopi-r4s u-boot-nanopi-r5s
pkg install u-boot-nanopi-r4s u-boot-nanopi-r5s

echo "==> About custom .conf build files"
echo " As in every new version there can be new lines on the files, they are not copied by default anymore. As a hint, compare files to the ones from this repository and adjust as needed."

