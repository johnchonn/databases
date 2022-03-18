CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(255),
  firstuse date,
  location VARCHAR(255),
  PRIMARY KEY(id)
);

CREATE TABLE messages (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  userID INT NOT NULL,
  message VARCHAR(255),
  date date,
  room VARCHAR(255),
  PRIMARY KEY(id),
  FOREIGN KEY (userID) REFERENCES users(id)
);


--   messages
-- id int
-- date and time -> date
-- message varchar(255)
-- room name varchar

--   users
-- id int
-- firstuse date time?


/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

