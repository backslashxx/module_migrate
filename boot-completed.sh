#!/usr/bin/env sh
MODDIR="${0%/*}"

string="description=🚨 ⚠️ if nothing is missing, uninstall me and reboot! | otherwise check \/data\/adb\/modules_backup.tgz "

sed -i "s/^description=.*/$string/g" $MODDIR/module.prop

touch $MODDIR/disable
