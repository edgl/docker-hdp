
CREATE USER 'rangeradmin'@'%' IDENTIFIED BY 'dev';

CREATE DATABASE ranger;

USE ranger;

GRANT ALL PRIVILEGES ON ranger.* TO 'rangeradmin'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
