# Register
This is registeration site using Languages - Java featuring Servlet, JSP & JDBC.

Servlet: It is a technology which is used to develop web application in java.

JSP : It is also technology which is also used to develop web application in java. Jsps are used for providing dynamic response. But at the end every JSP convert into servlet.

This features are widely used before, and are now reduced in usage, but still a learning path for ultimate frameworks -- Springboot & Hibernate

Key Libraries used:

Materialize CSS - https://materializecss.com/about.html

Jquery & Ajax (JS) - https://releases.jquery.com/

Database - MySQL -- using XAMPP Server

SQL Queries to be executed --

CREATE DATABASE jproject;

CREATE TABLE `jproject`.`user` (`id` INT(11) NOT NULL AUTO_INCREMENT , `name` VARCHAR(100) NOT NULL , `email` VARCHAR(100) NOT NULL , `password` VARCHAR(100) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;


Since its a jsp file it wont load on normal browser without server, eventually it will be downloaded from server.
