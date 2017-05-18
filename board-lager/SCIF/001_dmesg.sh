#!/bin/sh

set -e
#set -x

echo "sh-sci dmesg feature test"

dmesg | grep scif && echo -e "\nPASSED" || echo -e "\nFAILED"
