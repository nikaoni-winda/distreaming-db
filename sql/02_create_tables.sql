-- USERS
CREATE TABLE users (
	user_id INT AUTO_INCREMENT NOT NULL,
    user_nickname VARCHAR(50) NOT NULL,
    user_email VARCHAR(100) NOT NULL,
    
    PRIMARY KEY (user_id),
    UNIQUE (user_email)
);

-- MOVIES
CREATE TABLE movies (
	movie_id INT AUTO_INCREMENT NOT NULL,
    movie_title VARCHAR(150) NOT NULL,
    movie_duration INT NOT NULL,
    average_rating DECIMAL(3,1),
    production_year YEAR NOT NULL,
    
    PRIMARY KEY (movie_id)
);

-- GENRES
CREATE TABLE genres (
	genre_id INT AUTO_INCREMENT NOT NULL,
    genre_name VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (genre_id),
    UNIQUE (genre_name)
);

-- ACTORS
CREATE TABLE actors (
	actor_id INT AUTO_INCREMENT NOT NULL,
    actor_name VARCHAR(100) NOT NULL,
    
    PRIMARY KEY(actor_id)
);

-- MOVIE GENRES
CREATE TABLE movie_genres (
	movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- MOVIE ACTORS
CREATE TABLE movie_actors (
	movie_id INT NOT NULL,
    actor_id INT NOT NULL,
    
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

-- WATCH HISTORY
CREATE TABLE watch_history (
	watch_history_id INT AUTO_INCREMENT NOT NULL,
	user_id INT NOT NULL,
	movie_id INT NOT NULL,
	watch_date DATE NOT NULL,

	PRIMARY KEY (watch_history_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

-- REVIEWS
CREATE TABLE reviews (
	review_id INT AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    rating TINYINT NOT NULL,
    CHECK (rating BETWEEN 1 AND 10),
    
    PRIMARY KEY (review_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    UNIQUE (user_id, movie_id)    
);