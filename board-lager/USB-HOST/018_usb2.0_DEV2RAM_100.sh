#!/bin/bash

echo "copy file 100 MB from device to RAM"

$(dirname $0)/../helper/write_helper.sh "/mnt/usb"  -read -bcnt 100