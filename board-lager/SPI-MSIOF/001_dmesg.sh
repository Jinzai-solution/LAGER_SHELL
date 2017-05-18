#!/bin/sh

echo "SPI-MSIOF dmesg feature test"

dmesg | grep "renesas_spi e6b10000.spi" && echo -e "\nPASSED" || echo -e "\nFAILED"
