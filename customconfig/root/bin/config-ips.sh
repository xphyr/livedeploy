#!/bin/bash

# start by getting our IP address
# we will use the IP address of the primary route interface for IPv4
# additional work will be needed to support IPv6
IPADDR=`ip route get 1.2.3.4 | awk '{print $7}'`

# replace 127.0.0.2 with our actual IP address

sed -i s/127.0.0.2/$IPADDR/g /root/assisted-service/configmap.yml
sed -i s/127.0.0.2/$IPADDR/g /root/coredns/demo-poc.db