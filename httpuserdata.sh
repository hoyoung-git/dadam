amazon-linux-extras install epel -y
yum install -y httpd PolicyKit
systemctl enable --now httpd
echo "<h1>Seoul server2</h1>" > /var/www/html/index.html
echo 'export PS1="[\[\e[1;31m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\]: \[\e[1;36m\]\w\[\e[m\]]\\$"' >> /home/ec2-user/.bashrc
. /home/ec2-user/.bashrc
yum install -y mysql
systemctl start mariadb && systemctl enable mariadb
yum install -y php php-mysql
systemctl restart httpd