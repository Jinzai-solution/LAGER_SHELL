#!/bin/bash
echo "DMAE unbind-bind ec720000.dma test"

DRIVER="rcar-dmac"
DEV_NAME="ec720000.dma-controller"

if ! $(dirname $0)/../common/unbind-bind.sh "$DRIVER" "$DEV_NAME";then
	echo "Test Failed"
else
	echo "Test Passed"	
fi

