#!/bin/bash

setprop ctl.start vendor.sensors-hal-2-1-multihal

setprop ctl.start nfc_hal_service
sudo systemctl restart nfcd

setprop ctl.start vendor.vibrator.cs40l25
pkill feedbackd

setprop ctl.start bcmbtlinux-1.1

#setprop ctl.start init-radio-sh
#setprop ctl.start ril-daemon
#setprop ctl.start vendor.google.radioext@1.0
#setprop ctl.start vendor.modem_svc_sit
#setprop ctl.start pktrouter
#sudo systemctl restart ofono

setprop ctl.start mediametrics
setprop ctl.start minimedia

setprop ctl.start lhd
setprop ctl.start gpsd
setprop ctl.start scd
setprop ctl.start gnss_service

#setprop ctl.start audiometricext

setprop ctl.start wireless_charger

#setprop ctl.start vendor.media.omx

setprop ctl.start vendor.thermal-hal-2-0

setprop ctl.start vendor.fingerprint-goodix
#setprop ctl.start android-hardware-media-c2-hal-1-0
#setprop ctl.start android-hardware-media-c2-hal-1-0-google
setprop ctl.start google_battery

setprop ctl.start vendor.tetheroffload.hal-1-1

# ????
#setprop ctl.start RFS-daemon
setprop ctl.start securedpud.slider
setprop ctl.start cpboot-daemon
setprop ctl.start vendor.chre
setprop ctl.start vendor.wifi_hal_legacy
setprop ctl.start aocd
setprop ctl.start vendor.weaver_hal
#setprop ctl.start DM-daemon
setprop ctl.start BIP-Channel-Manager
