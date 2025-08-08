#!/bin/sh

ARCH=ARM64
VERSION="25.7"
TAG_SRC="zvio-13.3"

SRC_DIR=zvaultio-files

GIT_REPO="http://10.1.7.92:3000/local/zvio-build.git"

LOGDIR=/root/zvault_logs/
LOG=$LOGDIR/log.$HOST.$ARCH

DATE="+%Y-%m-%d_%H:%M:%S"
HOST=`hostname`

# Home for zvaultio
ZVAULT_HOME=/local/zvaultio

# Functions used

log_print () {
 SCRIPT=$0
 TAG_SRC_FUNC=$1
 LOG_FILE=$2
 DATE_FUNC=$3
 STATE=$4

 echo -n "$SCRIPT $TAG_SRC_FUNC $DEVICE $IMAGE_SIZE $STATE: $(printf '\t')" >> $LOG_FILE
 date  $DATE_FUNC >> $LOG_FILE
}

############################
TAG_CORE="25.7.1-local"
TAG_PLUGINS="25.7.1"
TAG_PORTS="25.7.1"



ROOTDIR=/usr
DEVICE=ARM64
IMAGE_SIZE=3G
