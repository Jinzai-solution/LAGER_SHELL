#!/bin/bash

echo "copy file 5 level folder from RAM to SD1"

$(dirname $0)/../helper/write_folder_helper.sh "/mnt/sd1" -flvl 5