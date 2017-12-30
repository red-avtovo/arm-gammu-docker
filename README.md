# Project receives messages from GSM Modem and sends it as a Boxcar notification

to run

`docker run -e VENDOR_ID "" -e PRODUCT_ID "" -e BOXCAR_TOKEN "" --privileged`

EG for Huawei e3131:

`docker run -e VENDOR_ID "12d1" -e PRODUCT_ID "1c05" -e BOXCAR_TOKEN "123asd" --privileged`

for debugging

`docker run -it -e VENDOR_ID "12d1" -e PRODUCT_ID "1c05" -e BOXCAR_TOKEN "123asd" --privileged`
