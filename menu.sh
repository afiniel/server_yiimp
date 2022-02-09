#!/usr/bin/env bash

#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by Afiniel for crypto use...
#####################################################

source /etc/functions.sh

RESULT=$(dialog --stdout --default-item 1 --title "Afiniel Yiimp installer" --menu "Choose one" -1 60 6 \
' ' "- Burn Baby Burn. -" \
1 "Start the installation " \
2 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi

if [ $RESULT = 1 ]
then
clear;
echo '
wireguard=false
' | sudo -E tee $HOME/multipool/yiimp_single/.wireguard.install.cnf >/dev/null 2>&1;
fi

if [ $RESULT = 2 ]
then
clear;
exit;
fi
