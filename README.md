# birds_db
Frontend and backend for a simple database of birds of North America.
Put all files in "html" under "/var/www/html"
Use the "birds_na.sql" to create and populate the MySQL database. Note: You will need superuser access for doing this.

# Commands for creating the birdie readonly user
CREATE USER 'birdie'@'dbserv01.sh' IDENTIFIED BY 'abcd1234';
GRANT SELECT ON BIRDS_NA.* TO 'birdie'@'dbserv01.sh';

WARNING! This application is not secure! The PHP script could be easily hijacked by bad actors. 
Usage approved for demonstration purposes only.
