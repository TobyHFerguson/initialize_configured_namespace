drop database if exists hive;
create database hive DEFAULT CHARACTER SET utf8;
grant all on hive.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';
drop database if exists sentry;
create database sentry DEFAULT CHARACTER SET utf8; 
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';
