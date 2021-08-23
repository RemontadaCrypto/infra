CREATE DATABASE test;
CREATE USER test@'%' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON test.* TO 'test'@'%';

CREATE DATABASE remontadacryptodb;
CREATE USER remontadacrypto@'%' IDENTIFIED BY 'remontadacrypto';
GRANT ALL PRIVILEGES ON remontadacrypto.* TO 'remontadacrypto'@'%';



