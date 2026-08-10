#!/bin/bash 

yum install nginx -y 
systemctl start nginx 
systemctl enable nginx 
