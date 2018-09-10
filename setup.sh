#!/bin/bash

sudo docker build -t ocserv-lan:latest . --no-cache
sudo docker run --name sslvpn --privileged -p 443:443 -p 443:443/udp -d ocserv-lan --restart=always
# sudo docker exec -ti sslvpn ocpasswd -c /etc/ocserv/ocpasswd username
# sudo docker exec -ti sslvpn ocpasswd -c /etc/ocserv/ocpasswd -d test
