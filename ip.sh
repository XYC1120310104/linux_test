#!/bin/bash
#我的当前网段为172.17.247.240
# Ping网段所有IP
ip=1 #修改初值
true >ip.txt
while [ $ip != "254" ]; do 
ping  172.17.247.$ip -c 1 -w 1 | grep -q "ttl=" && echo "172.17.247.$ip">>ip.txt 
ip=`expr "$ip" "+" "1"`
done
