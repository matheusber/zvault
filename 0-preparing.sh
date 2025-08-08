#!/bin/sh

pkg update
pkg install gitea

echo "

[git.timeout]
DEFAULT = 360
MIGRATE = 1200
MIRROR = 1200
CLONE = 300
PULL = 300
GC = 60" >> /usr/local/etc/gitea/conf/app.ini

# fix FreeBSD problem when starting gitea
chmod 666 /usr/local/etc/gitea/conf/app.ini
