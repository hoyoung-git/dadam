amazon-linux-extras install epel -y
yum install -y httpd PolicyKit
systemctl enable --now httpd
yum install -y mysql
yum install -y php php-mysql
systemctl restart httpd
systemctl restart mysqld
rpm -Uvh https://repo.mysql.com/mysql80-community-release-el7.rpm
yum-config-manager --enable mysql80-community
sudo yum install -y mysql-community-server
sudo systemctl enable mysqld
sudo systemctl status mysqld