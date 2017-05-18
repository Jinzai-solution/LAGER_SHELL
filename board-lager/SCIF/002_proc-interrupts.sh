#!/bin/sh

set -e
#set -x

echo "sh-sci /proc/interrupts presence test"

cat /proc/interrupts | grep serial && echo -e "\nPASSED" || echo -e "\nFAILED"

