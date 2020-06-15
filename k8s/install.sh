#!/bin/bash
hostnamectl set-hostname kub-master
exec bash
setenforce 0
set -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
echo -e "\e[31m SUCCESS\e[0m"
echo -e "\e[31m Allowing firewall ports\e[0m"
firewall-cmd --permanent --add-port=6443/tcp
firewall-cmd --permanent --add-port=2379-2380/tcp
firewall-cmd --permanent --add-port=10250-10252/tcp
firewall-cmd --permanent --add-port=10255/tcp
firewall-cmd --reload
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
echo -e "\e[31m Ports Added Successfuly\e[0m"
