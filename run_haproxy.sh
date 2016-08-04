#!/bin/sh
iptables -I INPUT -p tcp -m multiport --dports 80 --syn -j DROP
sleep 0.5 && \
haproxy -f /etc/haproxy.cfg -p /var/run/haproxy.pid -sf $(cat /var/run/haproxy.pid) -D
iptables -D INPUT -p tcp -m multiport --dports 80 --syn -j DROP
