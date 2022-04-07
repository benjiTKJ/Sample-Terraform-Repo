#!/bin/bash
sudo yum update -y
sudo yum install httpd -y 
#rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
#wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
#sudo yum localinstall mysql57-community-release-el7-8.noarch.rpm -y
#sudo yum install mysql-community-server -y
service httpd start
service mysqld start
mysqladmin -uroot create mydb
cd /var/www/html
wget http://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cd wordpress
mv wp-config-sample.php wp-config.php 
