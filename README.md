# Register
This is registeration site using Languages - Java featuring Servlet, JSP & JDBC.

Key Libraries used:

Materialize CSS - https://materializecss.com/about.html

Jquery & Ajax (JS) - https://releases.jquery.com/

Database - MySQL -- using XAMPP Server

SQL Queries to be executed --

CREATE DATABASE jproject;

CREATE TABLE `jproject`.`user` (`id` INT(11) NOT NULL AUTO_INCREMENT , `name` VARCHAR(100) NOT NULL , `email` VARCHAR(100) NOT NULL , `password` VARCHAR(100) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;


Since its a jsp file it wont load on normal browser without server, eventually it will be downloaded from server.
