#!/bin/bash
sudo yum -y install epel-release
sudo yum -y install ansible
sudo yum -y install git
git clone https://github.com/muralialakuntla3/terraform-aws.git /home/centos
cd terraform-aws
ansible-playbook setup_ecomm.yml -i aws.ini
