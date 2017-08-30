#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
sepolicy-inject --live "allow system_server su fifo_file write"
sepolicy-inject --live "allow audioserver su fd use"
sepolicy-inject --live "allow audioserver su fifo_file write"
