#!/bin/bash
#https://wammu.eu/docs/manual/smsd/run.html#gammu-smsd-run
from=$SMS_1_NUMBER
message=$SMS_1_TEXT
token=$BOXCAR_TOKEN

boxcar -c $token -f $from -m $message -t "SMSD"

