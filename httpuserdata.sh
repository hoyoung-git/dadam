amazon-linux-extras install epel -y
yum install -y httpd PolicyKit
systemctl enable --now httpd
echo "<h1>Seoul server2</h1>" > /var/www/html/index.html
yum install -y mysql
systemctl start mariadb && systemctl enable mariadb
yum install -y php php-mysql
amazon-linux-extras enable php8.2
amazon-linux-extras install -y php8.2
systemctl restart httpd
systemctl restart mysqld
