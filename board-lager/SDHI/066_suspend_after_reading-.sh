#!/bin/bash
echo "suspend after reading SD card"

$(dirname $0)/../helper/suspend_helper-.sh "/mnt/sd" -a sar