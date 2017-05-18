#!/bin/sh

set -e
#set -x

echo "SPI-MSIOF /proc/interrupts presence test"

cat /proc/interrupts | grep spi && echo -e "\nPASSED" || echo -e "\nFAILED"

