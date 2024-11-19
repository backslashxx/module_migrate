#!/usr/bin/env sh
cd /data/adb
# also remove modules_update
rm /data/adb/ksu/modules_update.img

if [ -f /data/adb/ksu/modules.img ]; then 
	abort "[+] please delete /data/adb/ksu/modules.img to continue"
fi



tar czvf modules_backup.tgz modules/ > /dev/null 2>&1

ls -la /data/adb/modules_backup.tgz && {
	echo "[+] modules backed up!"
}

echo "[+] migration prepared"
echo "[+] please reboot"
sleep 3
