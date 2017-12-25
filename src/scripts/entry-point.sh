#!/usr/bin/env bash

renderTemplate() {
eval "cat <<EOF
$(<$1)
EOF
" 2> /dev/null
}

renderTemplate /root/config.template.conf > /root/gammu.conf
gammu-smsd -c /root/gammu.conf
