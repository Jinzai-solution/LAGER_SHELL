#!/bin/bash
echo "device class dma1 test"

OK=0
NG=0
for count in $(seq 0 14)
do
	NAME_DEVICE="dma1chan$count"
	if ls /sys/class/dma | grep "$NAME_DEVICE" > /dev/null ; then
		echo "$NAME_DEVICE: passed"
		OK=$(($OK + 1))
	else
		echo "$NAME_DEVICE: failed"
		NG=$(($NG + 1))
	fi
done

echo -e "\nPassed:$OK Failed:$NG"

