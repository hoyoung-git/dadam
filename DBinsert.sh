mysql -uadmin -p11111111 -hsoldesk-global-db-cluster-instance-1.c140gascstjn.ap-northeast-2.rds.amazonaws.com -e "CREATE USER 'user1'@'%' identified by 'p@ssw0rd';"
mysql -uadmin -p11111111 -hsoldesk-global-db-cluster-instance-1.c140gascstjn.ap-northeast-2.rds.amazonaws.com -e "GRANT all privileges ON *.* TO user1@'%' with grant option;"
mysql -uadmin -p11111111 -hsoldesk-global-db-cluster-instance-1.c140gascstjn.ap-northeast-2.rds.amazonaws.com -e "CREATE DATABASE sqlDB;flush privileges;"
mysql -uadmin -p11111111 -hsoldesk-global-db-cluster-instance-1.c140gascstjn.ap-northeast-2.rds.amazonaws.com -e "USE sqlDB;CREATE TABLE userTBL( userID CHAR(8) NOT NULL PRIMARY KEY, name NVARCHAR(50) NOT NULL, mobile CHAR(11) NOT NULL, birthYear CHAR(10), email VARCHAR(30), mDATE DATE);"
cat << EOF > data.sql
USE sqlDB;
INSERT INTO userTBL(userID, name, mobile, birthYear, email, mDATE) 
VALUES('god', '신창섭', '01011112222', '1990512', NULL, '2012-4-4');
INSERT INTO userTBL(userID, name, mobile, birthYear, email, mDATE) 
VALUES('trash', '강원기', '01033334444', '1950', 'sss@email.com', '2009-4-4');
INSERT INTO userTBL(userID, name, mobile, birthYear, email, mDATE)
VALUES('brg', '오한별','01033331111', '1979', NULL, '2013-12-12');
INSERT INTO userTBL(userID, name, mobile, birthYear, email, mDATE)
VALUES('reboot', '황선영', '01031212222', '1963', NULL, '2009-9-9');
INSERT INTO userTBL(userID, name, mobile, birthYear, email, mDATE)
VALUES('gaga', '가가', '01033332222', '1963', 'jiho22@email.com','2009-9-9');
EOF
mysql -uadmin -p11111111 -hsoldesk-global-db-cluster-instance-1.c140gascstjn.ap-northeast-2.rds.amazonaws.com < data.sql