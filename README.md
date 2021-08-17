# network-tools
Docker image which includes multiple network debugging tools

This docker image is based on praqma/network-multitool:alpine-minimal.
Credit of creating that image goes to praqma.

The added tool is openssl to allow openssl s_client -connect

# Deploy onto Kubernetes

Use following yaml file to deploy this tool set to kubernetes cluster

```
---
apiVersion: v1
kind: Pod
metadata:
  name: netdebugger
  labels:
    app: debugger
spec:
  containers:
    - name: networktools
      image: email4tong/network-tools
      ports:
        - containerPort: 80

```

# Tools included in this imae

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
/bin/sh shell interpreter - not /bin/bash
openssl
```
