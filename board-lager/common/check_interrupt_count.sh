#!/bin/bash

# argument
diff_amount=$1


# declaration
function getInterruptCount {
	IRQ="$1"
	IRQ=${IRQ%% [A-Za-z]*}
	IRQ=${IRQ#* }
	echo $IRQ   
}

# todo
pass=true
count=0
while read line;do
	head=${line%% *}
	tail=${line##* }
	while read cur; do
		if [[ "$cur" ==  $head* && "$cur" == *$tail ]]; then
			cur_INTcnt=$(getInterruptCount "$cur");
			pre_INTcnt=$(getInterruptCount "$line");
			cpu0_cur=(${cur_INTcnt// / })
			cpu0_pre=(${pre_INTcnt// / })
			((diff=$cpu0_cur - $cpu0_pre))
			if [[ $diff -lt $diff_amount ]]; then
				echo "Interrupt not increased as expected"
				echo "PREVIOUS: $line"
				echo "CURRENT : $cur"
				pass=false
			fi
			break
		fi
	done < /proc/interrupts
	((count++))
done
[[ "$count" == "0" ]] && echo "WARNING: no interrupts found"
$pass && echo "PASSED" || echo "FALSE"