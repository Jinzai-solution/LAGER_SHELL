#!/bin/bash

echo "copy file 350 MB from RAM to SD1 which already have data inside"

$(dirname $0)/../helper/write_helper.sh "/mnt/sd1" -bcnt 350 -hasdata