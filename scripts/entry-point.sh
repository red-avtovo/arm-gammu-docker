#!/usr/bin/env bash

renderTemplate() {
eval "cat <<EOF
$(<$1)
EOF
" 2> /dev/null
}

getTTY() {
    modemDeviceLine=$(dmesg | grep "idVendor=${VENDOR_ID}, idProduct=${PRODUCT_ID}" | tail -n 1)
    modemDeviceTag=$(echo $modemDeviceLine | awk -F '] ' '{print $2}' | awk -F ': ' '{print $1}')
    lastTtyLine=$(dmesg | grep "tty" | grep "$modemDeviceTag" | tail -n1)
    lastTty="/dev/tty$(echo $lastTtyLine | awk -F 'tty' '{print $2}')"
    echo $lastTty
}

TTY=$(getTTY)
renderTemplate /root/config.template.conf > /root/gammu.conf
gammu-smsd -c /root/gammu.conf
