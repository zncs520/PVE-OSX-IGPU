#!/bin/bash
x='/root/ddstools'
cp -rf $x/grub /etc/default/
cp -rf $x/modules /etc/
cp -rf $x/igd.rom /usr/share/kvm/
cp -rf $x/automount /etc/init.d/
mkdir -p /mnt/nvme500g
mkdir -p /mnt/nvme1t
mkdir -p /mnt/hdd4t
mkdir -p /mnt/ssd500g
chmod +x /etc/init.d/automount
chmod +x $x/pvebak
sed -i '/pvebak/d' /etc/crontab
echo "0  0  *  *  *  root  $x/pvebak" >> /etc/crontab
systemctl restart cron
cd /etc/init.d
update-rc.d automount defaults
update-grub
update-initramfs -k all -u
