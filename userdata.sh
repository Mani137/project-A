#!/bin/bash
sudo yum -y update
sudo yum -y install git
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
