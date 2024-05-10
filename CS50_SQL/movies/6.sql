SELECT ROUND(AVG(rating), 2) AS avg_rating_from_2012
FROM ratings
WHERE movie_id IN(
    SELECT id
    FROM movies
    WHERE year = 2012
);
