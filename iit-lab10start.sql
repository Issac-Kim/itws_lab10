-- create the tables for our movies

CREATE TABLE `movies` (
 `movieid` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `title` varchar(100) NOT NULL,
 `year` char(4) DEFAULT NULL,
 PRIMARY KEY (`movieid`)
);


-- insert data into the tables

INSERT INTO movies VALUES
  (1, "Home Alone", "1990"),
  (2, "Iron Man", "2008"),
  (3, "The Big Short", "2015"),
  (4, "The Imitation Game", "2014"),
  (5, "The Avengers", "2012");

CREATE TABLE `actors` (
 `actorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `first_names` varchar(100) NOT NULL,
 `last_name` varchar(100) NOT NULL,
 `dob` char(10) DEFAULT NULL,
 PRIMARY KEY (`actorid`)
);

INSERT INTO actors VALUES
  (1, "Robert", "Downey Jr.", "1965-04-04"),
  (2, "Macaulay", "Culkin", "1980-08-26"),
  (3, "Christian", "Bale", "1974-01-30"),
  (4, "Benedict", "Cumberbatch", "1976-07-19"),
  (5, "Gwyneth", "Paltrow", "1972-09-27");

CREATE TABLE `actors_movies` (
 `actorid` int(10) unsigned NOT NULL,
 `movieid` int(10) unsigned NOT NULL,
 PRIMARY KEY (`movieid`)
);

INSERT INTO actors_movies VALUES
  (1, 2),
  (1, 5),
  (3, 3),
  (2, 1);
