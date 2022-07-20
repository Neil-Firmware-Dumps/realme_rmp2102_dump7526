#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:16ba995e051894a3532a952c7d1c8ca513450586; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:16ba995e051894a3532a952c7d1c8ca513450586 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
