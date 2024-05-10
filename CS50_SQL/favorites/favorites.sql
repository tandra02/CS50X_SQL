SELECT * FROM shows;

/* Make the data point title cased*/

UPDATE shows SET title = "How I Met Your Mother" WHERE title = "How i met your mother";

UPDATE shows SET title = 'Adventure Time' WHERE title LIKE 'adventure%';

UPDATE shows SET title = 'Arrow' WHERE title LIKE 'arrow%';

UPDATE shows SET title = 'Avatar: The Last Airbender' WHERE title LIKE 'avatar%';

UPDATE shows SET title = 'Brooklyn Nine-Nine' WHERE title LIKE 'brooklyn%';

UPDATE shows SET title = 'Community' WHERE title LIKE 'community%';

UPDATE shows SET title = 'Family Guy' WHERE title LIKE 'family%';

UPDATE shows SET title = 'Friends' WHERE title LIKE 'friends%';

UPDATE shows SET title = 'Game of Thrones' WHERE title LIKE 'game%';

UPDATE shows SET title = 'Gilmore Girls' WHERE title LIKE 'gilmore%';

UPDATE shows SET title = "Grey's Anatomy" WHERE title LIKE 'grey%'; --

UPDATE shows SET title = "It’s Always Sunny in Philadelphia" WHERE title LIKE 'It%';

UPDATE shows SET title = "Parks and Recreation" WHERE title LIKE 'Parks%';

UPDATE shows SET title = "Sherlock" WHERE title LIKE 'sherlock%';

UPDATE shows SET title = "Squid Game" WHERE title LIKE 'squid%';

UPDATE shows SET title = "The Bachelorette" WHERE title LIKE '%bachelorette%';

UPDATE shows SET title = "The Crown" WHERE title LIKE '%CROWN%';

UPDATE shows SET title = "The Office" WHERE title LIKE '%office%';

UPDATE shows SET title = "The Queen’s Gambit" WHERE title LIKE '%Gambit%';

UPDATE shows SET title = "The Untamed" WHERE title LIKE '%Untamed%';

UPDATE shows SET title = "Brooklyn Nine-Nine" WHERE title LIKE 'B99%';

UPDATE shows SET title = "Game of Thrones" WHERE title LIKE 'GoT%';

UPDATE shows SET title = "Criminal Minds" WHERE title LIKE 'criminal%';

UPDATE shows SET title = "Billions" WHERE title LIKE 'billions%';
