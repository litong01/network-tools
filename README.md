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

cat << EOF | kubectl apply -f -
apiVersion: v1
kind: Service
metadata:
  labels:
    app: networktools
  name: networktools
spec:
  ports:
  - name: http
    port: 80
    protocol: TCP
    targetPort: 80
  - name: https
    port: 443
    protocol: TCP
    targetPort: 443
  selector:
    app: networktools
  type: LoadBalancer
EOF
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
