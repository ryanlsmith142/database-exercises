-- USE The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

USE codeup_test_db;

SELECT name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = "Sgt Pepper's Lonely Hearts Club Band";

SELECT genre AS 'Genre for Album: Nevermind' FROM albums WHERE name ="Nevermind";

SELECT * AS 'Albums Between 1990 - 1999' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with less than 20 million certified sales',sales FROM albums WHERE sales < 20;

SELECT name AS 'Rock Genre Albums' FROM albums WHERE genre = 'Rock';