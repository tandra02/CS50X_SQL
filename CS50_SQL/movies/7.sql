SELECT movies.title AS title, rating
FROM ratings
LEFT JOIN movies
ON ratings.movie_id = movies.id
WHERE year = 2010
AND rating IS NOT NULL
ORDER BY rating DESC, title ASC
LIMIT 15;
