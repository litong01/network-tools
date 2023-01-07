# network-tools
Docker image which includes multiple network debugging tools

This docker image is based on praqma/network-multitool:alpine-minimal.
Credit of creating that image goes to praqma.

# Deploy onto Kubernetes as a pod

```
kubectl run networktools --image=email4tong/network-tools
```

# Deploy onto Kubernetes as a deployment and expose to outside

```
kubectl create deployment networktools --image=email4tong/network-tools

kubectl expose deployment networktools --port=80 --target-port=80 \
        --name=networktools --type=LoadBalancer
kubectl expose deployment networktools --port=443 --target-port=443 \
        --name=networktools --type=LoadBalancer

```

# Tools included in this image

```
apk package manager
Nginx Web Server (port 80, port 443) - customizable ports!
wget, curl
dig, nslookup
ip, ifconfig, route, traceroute, tracepath, mtr
ping, arp, arping
ps, netstat
gzip, cpio, tar
telnet client
tcpdump
awk, cut, diff, find, grep, sed, vi editor, wc
jq
/bin/sh
openssl
```
