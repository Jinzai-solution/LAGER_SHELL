#!/bin/bash

echo "copy file 5 level folder from device to RAM"

$(dirname $0)/../helper/write_folder_helper.sh "/mnt/usb30" -read -flvl 5