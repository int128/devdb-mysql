CREATE DATABASE example;

CREATE USER 'example'@'%'
  IDENTIFIED BY 'example';

GRANT ALL PRIVILEGES
  ON example.*
  TO 'example'@'%';

