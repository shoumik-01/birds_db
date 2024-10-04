# birds_db
Frontend and backend for a simple database of birds of North America.

# Prerequisites
1. Linux Mint 21.3 or 22
2. Apache HTTP (apt install apache2)
3. MySQL Server 8.x (apt install mysql-server)
4. PHP 8.x (apt install php)
5. PHP extension for MySQL (apt install php-mysqli)

# Once dependencies are installed...
1. Put all files in "html" under "/var/www/html".
2. Use the "birds_na.sql" to create and populate the MySQL database. Note: You will need superuser access for doing this.

# Commands for creating the birdie readonly user
1. CREATE USER 'birdie'@'localhost' IDENTIFIED BY 'abcd1234';
2. GRANT SELECT ON BIRDS_NA.* TO 'birdie'@'localhost';

WARNING! This application is not secure! The PHP script could be easily hijacked by bad actors. 
Usage approved for demonstration purposes only.
