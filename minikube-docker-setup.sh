#!/bin/bash
set -e

#Installing some basics
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt -y install nano git neofetch htop nvtop pip nfs-common ncdu

# Installing kubectl
#curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
#chmod +x ./kubectl
#sudo mv ./kubectl /usr/local/bin/kubectl

# Installing kvm hypervisor
#sudo apt -y install libvirt-daemon-system bridge-utils qemu-kvm libvirt-daemon
#sudo usermod -aG libvirt $(whoami)
#sudo usermod -aG kvm $(whoami)

#Install docker
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Installing minikube itself
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv ./minikube /usr/local/bin/minikube

#echo "Now log out and log back in"
