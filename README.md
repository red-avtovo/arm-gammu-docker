# Project receives messages from GSM Modem and sends it as a Boxcar notification

to run

`docker run -e vendorId "" -e productId "" -e BOXCAR_TOKEN "" --privileged`

EG for Huawei e3131:

`docker run -e vendorId "12d1" -e productId "1c05" -e BOXCAR_TOKEN "123asd" --privileged`