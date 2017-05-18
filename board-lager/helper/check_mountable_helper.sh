#!/bin/bash

# constant
UMOUNT="$(dirname $0)/../common/remove_dev_dir.sh"
MOUNT="$(dirname $0)/mount_helper.sh"
# arguments
dev=$1

# option
phelp(){
	echo "usage: $(basename $0) dev_mount_folder"
	echo "dev_mount_folder: /mnt/sd0, /tmp/hd, /mnt/ram ..."
}
i=1
while [[ "$i" -le "$#" ]]; do
	if [[ ${!i} == "-h" ]];then ((i++)); phelp;exit 0; 
	fi
	((i++))
done
# -------------------------------------  TO DO  ------------------------------------
$MOUNT "$dev"

df -h | grep "$dev" && echo -e "\nPASSED" || echo -e "\nFAILED"

# clean up
$UMOUNT "$dev"
