#!/bin/bash

echo "copy file 10 MB from SD0 to SD1"

$(dirname $0)/../helper/write_helper.sh "sd1" -src "sd0" -bcnt 10