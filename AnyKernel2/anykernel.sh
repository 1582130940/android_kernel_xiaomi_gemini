# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Xtreme™ Project Kernel for Xiaomi MSM8996/8996Pro by 1582130940
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=gemini
device.name2=capricorn
device.name3=natrium
device.name4=scorpio
device.name5=lithium
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chmod -R 755 $ramdisk/sbin;
chown -R root:root $ramdisk/*;


## AnyKernel install
dump_boot;

write_boot;

## end install

