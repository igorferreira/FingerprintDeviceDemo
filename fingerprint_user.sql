CREATE USER 'fingerprint'@'localhost' IDENTIFIED BY 'Admin@1234';
GRANT ALL PRIVILEGES ON fingerprint.* TO 'fingerprint'@'localhost';
FLUSH PRIVILEGES;

