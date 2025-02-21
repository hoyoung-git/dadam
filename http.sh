amazon-linux-extras install epel -y
yum install -y httpd PolicyKit
systemctl enable --now httpd
echo "<h1>Seoul server2</h1>" > /var/www/html/index.html
yum install -y php php-mysql
systemctl restart httpd
