#!/bin/bash

echo "copy file 10 MB from SCSI device to RAM"

$(dirname $0)/../helper/write_helper.sh "/mnt/hd"  -read -bcnt 10