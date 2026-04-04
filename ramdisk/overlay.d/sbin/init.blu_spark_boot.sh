#!/system/bin/sh

# (c) 2019-2022 changes for blu_spark by eng.stk

# Wait to set proper init values
sleep 30

# Set TCP congestion algorithm
echo "westwood" > /proc/sys/net/ipv4/tcp_congestion_control

# Input boost configuration
echo "0:1094400 1:0 2:0 3:0 4:0 5:0 6:0 7:0" > /sys/devices/system/cpu/cpu_boost/input_boost_freq
echo 500 > /sys/devices/system/cpu/cpu_boost/input_boost_ms

echo "Boot blu_spark completed " >> /dev/kmsg
