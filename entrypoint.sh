#!/bin/sh
/usr/local/bin/consul-template -consul $CONSUL -template "/haproxy.cfg.ctmpl:/etc/haproxy.cfg:/run_haproxy.sh" 
