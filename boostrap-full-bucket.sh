#!/bin/bash

yum install httpd -y
yum update -y
aws s3 cp s3://BUCKETNAMEHERE/ /var/www/html/ --recursive
service httpd start
chkconfig httpd on

