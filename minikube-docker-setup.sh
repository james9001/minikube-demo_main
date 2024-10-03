#!/bin/bash
set -e

#Installing some basics
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt -y install nano git neofetch htop nvtop pip nfs-common ncdu dnsutils

# Installing kubectl
#curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
#chmod +x ./kubectl
#sudo mv ./kubectl /usr/local/bin/kubectl

# Installing kvm hypervisor
#sudo apt -y install libvirt-daemon-system bridge-utils qemu-kvm libvirt-daemon
#sudo usermod -aG libvirt $(whoami)
#sudo usermod -aG kvm $(whoami)

# Installing minikube itself
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv ./minikube /usr/local/bin/minikube

#echo "Now log out and log back in"
