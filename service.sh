#!/usr/bin/env sh
MODDIR="${0%/*}"

cd /data/adb
tar zxvf modules_backup.tgz > $MODDIR/migration.log

