CREATE DATABASE record_company;
USE record_company;
CREATE TABLE test (
	test_column INT
);
ALTER TABLE test
ADD another_column VARCHAR(255);
DROP TABLE test;


CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);


INSERT INTO bands (name)
VALUES ("Iron Maiden");

INSERT INTO bands (name)
VALUES ("Metallica"), ("Rammstein"), ("Venom");

SELECT * FROM bands;

SELECT * FROM bands LIMIT 2;

SELECT name FROM bands;

SELECT id AS "ID", name AS "Band name" FROM bands;

SELECT * FROM bands ORDER BY name;



INSERT INTO albums (name, release_year, band_id)
VALUES ("The number of the beast", 1985, 1), ("Power Slave", 1984, 1), ("Kill 'em All", 1982, 2);

SELECT * FROM albums;

INSERT INTO albums (name, release_year, band_id)
VALUES ("test", NULL, 3);

SELECT name FROM albums;

UPDATE albums SET release_year = 1982 WHERE id = 1;

SELECT * FROM albums;

SELECT * FROM albums WHERE release_year < 1984;

SELECT * FROM albums WHERE name LIKE "%er%" OR band_id = 2;

SELECT * FROM albums WHERE name LIKE "%er%" AND release_year = 1982;

INSERT INTO albums (name, release_year, band_id)
VALUES ("test2", 2005, 3), ("test3", 1999, 2);

SELECT * FROM albums;

SELECT * FROM albums WHERE release_year BETWEEN 1989 AND 2000;

DELETE FROM albums WHERE id = 4;

SELECT * FROM bands JOIN albums ON bands.id = albums.band_id;

SELECT SUM(release_year) FROM albums;

SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;