#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:64222454:5bf74ff2a0f3f702b65efd3968928ea1b73e9cb8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:58139890:6f5680897cd3ff5b7945a0c6fe9ebb0611f5bc95 EMMC:/dev/block/bootdevice/by-name/recovery 5bf74ff2a0f3f702b65efd3968928ea1b73e9cb8 64222454 6f5680897cd3ff5b7945a0c6fe9ebb0611f5bc95:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
