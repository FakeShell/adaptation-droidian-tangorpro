#!/bin/bash

setprop ctl.start vendor.sensors-hal-2-1-multihal

setprop ctl.start vendor.lights-tangotron
pkill feedbackd

setprop ctl.start synabtlinux-1.1

setprop ctl.start vendor.gatekeeper-1-0

setprop ctl.start mediametrics
setprop ctl.start minimedia

setprop ctl.start android-hardware-media-c2-hal-1-0-google
setprop ctl.start android-hardware-media-c2-hal-1-0

setprop ctl.start wireless_charger

setprop ctl.start vendor.thermal.symlinks
setprop ctl.start vendor.thermal-hal-2-0

setprop ctl.start fps_hal
setprop ctl.start google_battery

setprop ctl.start audio_proxy_service
setprop ctl.start audiometricext
setprop ctl.start aocd

setprop ctl.start vendor.weaver_hal

setprop ctl.start vendor.chre
setprop ctl.start vendor.wifi_hal_legacy
setprop ctl.start vendor.health-storage-default
setprop ctl.start vendor.identity_hal
setprop ctl.start vendor.pixelstats_vendor
setprop ctl.start vendor.power.stats
setprop ctl.start vendor.battery_mitigation
setprop ctl.start vendor.health-gs201
setprop ctl.start vendor.uwb_hal
setprop ctl.start vendor_uwb_init
setprop ctl.start vendor.input.processor
