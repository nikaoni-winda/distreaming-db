-- SHOW ALL MOVIES FROM MOVIE TABLE
SELECT * FROM movies;

-- SHOW MOVIES WITH RATING ABOVE 8.0
UPDATE movies m
JOIN (
	SELECT
		movie_id,
        AVG(rating) AS avg_rating
    FROM reviews
    GROUP BY movie_id
) r 
ON m.movie_id = r.movie_id
SET m.average_rating = ROUND(r.avg_rating, 1);

SELECT * FROM movies WHERE average_rating > 8.0;


-- SHOW THE FIRST 5 USERS BASED ON NAME (A - Z)
SELECT * FROM users ORDER BY user_nickname LIMIT 5;

-- SHOW MOVIES WITH TITLES CONTAINING THE WORD “LOVE”
SELECT * FROM movies WHERE movie_title LIKE "%love%";

-- SHOW MOVIES RELEASED IN A SPECIFIC YEAR
SELECT * FROM movies WHERE production_year = 2010;
SELECT * FROM movies WHERE production_year = 2025;

-- COUNT THE TOTAL NUMBER OF REGISTERED USERS
SELECT COUNT(*) AS total_users FROM users;

-- COUNT THE NUMBER OF FILMS PER GENRE (COUNT + GROUP BY GENRE_ID)
SELECT 
	g.genre_name,
    COUNT(mg.movie_id) AS total_movies,
    GROUP_CONCAT(m.movie_title SEPARATOR ', ') AS movies
FROM genres g
LEFT JOIN movie_genres mg On g.genre_id = mg.genre_id
LEFT JOIN movies m ON mg.movie_id = m.movie_id
GROUP BY g.genre_id, g.genre_name;

-- CREATE FILM GENRE (NEW COLUMN) BASED ON RATING USING CASE WHEN
   -- RATING >= 8.5 “TOP RATED”
   -- RATING 7.00 - 8.4 “POPULAR”
   -- RATING <7.0 “REGULAR”
SELECT
	m.movie_title,
    m.average_rating,
    CASE
		WHEN m.average_rating >= 8.5 THEN 'TOP RATED'
        WHEN m.average_rating BETWEEN 7.0 AND 8.4 THEN 'POPULAR'
        WHEN m.average_rating < 7.0 THEN 'REGULAR'
        ELSE 'NO RATING'
	END AS rating_category
FROM movies m;

-- SHOW COMPLETE MOVIE LIST (MOVIE GENRE, RATING, RELEASE YEAR)
SELECT 
	m.movie_title,
	GROUP_CONCAT(g.genre_name SEPARATOR ', ') AS movie_genres,
    m.average_rating,
    m.production_year
FROM movies m
LEFT JOIN movie_genres mg ON m.movie_id = mg.movie_id
LEFT JOIN genres g ON mg.genre_id = g.genre_id
GROUP BY m.movie_id, m.movie_title
ORDER BY m.average_rating DESC;

-- SHOW GENRES THAT DON'T HAVE ANY MOVIES YET
SELECT
	g.genre_name
FROM genres g
LEFT JOIN movie_genres mg ON g.genre_id = mg.genre_id
WHERE mg.genre_id IS NULL;

-- CHECK THE STATUS OF ALL FILM GENRES
SELECT 
    g.genre_name,
    COUNT(mg.movie_id) AS total_movies
FROM genres g
LEFT JOIN movie_genres mg 
    ON g.genre_id = mg.genre_id
GROUP BY g.genre_id, g.genre_name
ORDER BY total_movies ASC;


   
   