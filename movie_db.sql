CREATE DATABASE ketu_movie_web;
USE ketu_movie_web;

CREATE TABLE movie  (
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    sinopsis TEXT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    director VARCHAR(255) NOT NULL,
    writer VARCHAR(255) NOT NULL,
    cast VARCHAR(255) NOT NULL,
    release_year VARCHAR(4) NOT NULL,
    durasi VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE rating (
	id INT NOT NULL AUTO_INCREMENT,
    movie_id INT NOT NULL,
    rating DOUBLE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (movie_id) REFERENCES movie(id)
);

CREATE TABLE age_rating (
	id INT NOT NULL AUTO_INCREMENT,
    movie_id INT NOT NULL,
    age_rating VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (movie_id) REFERENCES movie(id)
);

CREATE TABLE account (
	id INT NOT NULL AUTO_INCREMENT,
    no_hp INT NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(15) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE movie_search  (
	query VARCHAR(255) NOT NULL,
    result TEXT NOT NULL,
    PRIMARY KEY (query)
);

CREATE TABLE comment (
	id INT NOT NULL AUTO_INCREMENT,
    comment TEXT NOT NULL,
    account_id INT NOT NULL,
    movie_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (account_id) REFERENCES account(id),
    FOREIGN KEY (movie_id) REFERENCES movie(id)
);
