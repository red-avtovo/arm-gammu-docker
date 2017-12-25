#!/usr/bin/env bash

#render template
eval "cat <<EOF
$(<template.txt)
EOF
" 2> /dev/null

gammu-smsd -c /root/
