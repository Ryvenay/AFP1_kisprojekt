CREATE USER 'miniproject'@'localhost' IDENTIFIED VIA mysql_native_password USING '***';GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'miniproject'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;CREATE DATABASE IF NOT EXISTS `miniproject`;GRANT ALL PRIVILEGES ON `miniproject`.* TO 'miniproject'@'localhost'; 