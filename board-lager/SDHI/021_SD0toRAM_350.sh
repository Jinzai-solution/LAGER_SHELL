#!/bin/bash

echo "copy file 350 MB from SD0 to RAM"

$(dirname $0)/../helper/write_helper.sh "/mnt/sd0"  -read -bcnt 350