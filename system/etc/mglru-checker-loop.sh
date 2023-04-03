#!/system/bin/sh

while true
do
    mglru_enabled=$(cat /sys/kernel/mm/lru_gen/enabled)

    if [ "$mglru_enabled" != "0x0000" ]; then
        resetprop persist.sys.mglru_enable false
    fi

    sleep 30
done
