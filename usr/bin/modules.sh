#!/bin/bash

modules=(
pinctrl-slg51000.ko
slg51000-regulator.ko
slg51000-core.ko
stmvl53l1.ko
pktgen.ko
cfg80211.ko
mac80211.ko
bcmdhd43752.ko
bcmdhd4389.ko
drv2624.ko
ftm5.ko
haptics-cs40l2x.ko
lwis.ko
sec_touch.ko
snd_soc_cs40l2x.ko
)

for name in "${modules[@]}"; do
    cd /vendor_dlkm/lib/modules
    insmod "$name"
done

exit 0
