-- Create a MySQL user named holberton_user on both web-01 and web-02
-- with the host name set to localhost and the password projectcorrection280hbtn

-- Connect to MySQL as a privileged user (e.g., root) first, if not already connected

CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
