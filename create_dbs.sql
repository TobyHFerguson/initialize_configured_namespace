drop database if exists hive;
create database hive DEFAULT CHARACTER SET utf8;
-- If you change the passwords then make sure to change the entrypoint.sh script too!
grant all on hive.* TO 'hive'@'%' IDENTIFIED BY 'Hive_Password1!';
drop database if exists sentry;
create database sentry DEFAULT CHARACTER SET utf8; 
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'Sentry_Password1!';
