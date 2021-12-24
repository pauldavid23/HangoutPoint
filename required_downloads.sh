#!/bin/bash
yum update -y
sudo yum install java-1.8.0-openjdk-devel
yum install wget 
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install epel-release-latest-7.noarch.rpm
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins 
sudo systemctl start jenkins
sudo systemctl enable jenkins
systemctl status jenkins

yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install slirp4netns fuse-overlayfs container-selinux
yum install docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl status docker

subscription-manager repos --enable rhel-7-server-ansible-2.6-rpms
yum install -y ansible
yum install -y python
yum install -y libselinux-python
yum install -y sshpass 