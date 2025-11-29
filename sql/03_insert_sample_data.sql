-- USERS
INSERT INTO users (user_nickname, user_email)
VALUES
('Mikasa', 'ackerman.mikasa@mail.com'),
('Eren', 'tatakae@mail.com'),
('Armin', 'arminarlert@mail.com'),
('Erwin', 'shinzousasageyo@mail.com'),
('Levi', 'oldman@mail.com'),
('Tanjiro', 'kamado.tanjiro@mail.com'),
('Nezuko', 'nezuko_chann@mail.com'),
('Zenitsu', 'prettynezuko.is.mine@mail.com'),
('Inosuke', 'god.of.eastmountain@mail.com'),
('Lisa', 'lalalisa_m@mail.com'),
('Jennie', 'jennierubyjane@mail.com'),
('Rose', 'rosesarerosie@mail.com'),
('Jisoo', 'sooyaaa@mail.com'),
('Murph', 'murphycooper12@mail.com'),
('Barbara', 'barbarapalvinn43@mail.com');

-- MOVIES
INSERT INTO movies (movie_title, movie_duration, average_rating, production_year)
VALUES
  ('Interstellar', 169, NULL, 2014),
  ('Inception', 148, NULL, 2010),
  ('The Dark Knight', 152, NULL, 2008),
  ('La La Land', 128, NULL, 2016),
  ('Titanic', 195, NULL, 1997),
  ('The Lord of the Rings: The Fellowship of the Ring', 178, NULL, 2001),
  ('Harry Potter and the Sorcerer''s Stone', 152, NULL, 2001),
  ('Gladiator', 155, NULL, 2000),
  ('Parasite', 132, NULL, 2019),
  ('The Matrix', 136, NULL, 1999),
  ('The Wolf of Wall Street', 180, NULL, 2013),
  ('The Avengers', 143, NULL, 2012),
  ('Pride & Prejudice', 127, NULL, 2005),
  ('Black Swan', 108, NULL, 2010),
  ('Saving Private Ryan', 169, NULL, 1998),
  ('Love, Maybe', 164, NULL, 2003),
  ('Dear, Love Symphony', 169, NULL, 2024);

-- GENRES
INSERT INTO genres (genre_name)
VALUES
  ('Drama'),
  ('Romance'),
  ('Sci-Fi'),
  ('Adventure'),
  ('Fantasy'),
  ('Historical'),
  ('Thriller'),
  ('Mystery'),
  ('Crime'),
  ('Action'),
  ('Comedy'),
  ('Musical'),
  ('War'),
  ('Biography'),
  ('Horror');

-- ACTORS 
INSERT INTO actors (actor_name)
VALUES
  ('Leonardo DiCaprio'),
  ('Kate Winslet'),
  ('Matthew McConaughey'),
  ('Anne Hathaway'),
  ('Christian Bale'),
  ('Ryan Gosling'),
  ('Emma Stone'),
  ('Keanu Reeves'),
  ('Elijah Wood'),
  ('Daniel Radcliffe'),
  ('Russell Crowe'),
  ('Song Kang-ho'),
  ('Robert Downey Jr.'),
  ('Keira Knightley'),
  ('Natalie Portman');

-- MOVIE GENRES
INSERT INTO movie_genres (movie_id, genre_id)
VALUES
-- 1 Interstellar
(1,3),(1,1),(1,4),

-- 2 Inception
(2,3),(2,1),(2,7),

-- 3 The Dark Knight
(3,10),(3,7),(3,9),

-- 4 La La Land
(4,11),(4,12),(4,2),

-- 5 Titanic
(5,1),(5,2),(5,6),

-- 6 LOTR: Fellowship
(6,5),(6,4),(6,10),

-- 7 Harry Potter 1
(7,5),(7,4),(7,8),

-- 8 Gladiator
(8,6),(8,10),(8,13),

-- 9 Parasite
(9,1),(9,7),(9,9),(9,8),

-- 10 The Matrix
(10,3),(10,10),(10,7),

-- 11 Wolf of Wall Street
(11,1),(11,11),(11,9),

-- 12 The Avengers
(12,10),(12,4),(12,1),

-- 13 Pride & Prejudice
(13,2),(13,1),

-- 14 Black Swan
(14,1),(14,7),

-- 15 Saving Private Ryan
(15,13),(15,6),(15,1),

-- 16 Love, Maybe
(16,1),(16,2),

-- Dear, Love Symphony
(17,2),(17,5),(17,6);

-- MOVIE ACTORS
INSERT INTO movie_actors (movie_id, actor_id)
VALUES
-- 1 Interstellar
(1,3),(1,4),

-- 2 Inception
(2,1),(2,11),

-- 3 The Dark Knight
(3,3),(3,5),

-- 4 La La Land
(4,6),(4,7),

-- 5 Titanic
(5,1),(5,2),

-- 6 LOTR: Fellowship
(6,9),(6,8),

-- 7 Harry Potter 1
(7,10),(7,9),

-- 8 Gladiator
(8,11),(8,15),

-- 9 Parasite
(9,12),(9,6),

-- 10 The Matrix
(10,8),(10,3),

-- 11 The Wolf of Wall Street
(11,1),(11,3),

-- 12 The Avengers
(12,13),(12,3),

-- 13 Pride & Prejudice
(13,14),(13,2),

-- 14 Black Swan
(14,15),(14,7),

-- 15 Saving Private Ryan
(15,5),(15,13),

-- 16 Love, Maybe
(16,1),(16,4),(16,10),(16,12),

-- 17 Dear, Love Symphony
(17,3),(17,14),(17,15);

-- WATCH HISTORY
INSERT INTO watch_history (user_id, movie_id, watch_date)
VALUES
-- User 1: Mikasa
(1, 1,  '2024-01-10'),
(1, 6,  '2024-01-12'),
(1, 10, '2024-01-15'),

-- User 2: Eren
(2, 2,  '2024-02-05'),
(2, 3,  '2024-02-10'),
(2, 11, '2024-02-15'),

-- User 3: Armin
(3, 1,  '2024-03-01'),
(3, 5,  '2024-03-05'),
(3, 9,  '2024-03-10'),

-- User 4: Erwin
(4, 6,  '2024-03-20'),
(4, 15, '2024-03-25'),
(4, 8,  '2024-03-28'),

-- User 5: Levi
(5, 3,  '2024-04-02'),
(5, 8,  '2024-04-05'),
(5, 15, '2024-04-08'),

-- User 6: Tanjiro
(6, 7,  '2024-05-01'),
(6, 4,  '2024-05-03'),
(6, 14, '2024-05-05'),

-- User 7: Nezuko
(7, 7,  '2024-05-10'),
(7, 5,  '2024-05-12'),
(7, 16, '2024-05-15'),

-- User 8: Zenitsu
(8, 4,  '2024-06-01'),
(8, 9,  '2024-06-04'),
(8, 12, '2024-06-07'),

-- User 9: Inosuke
(9, 10, '2024-06-10'),
(9, 12, '2024-06-13'),
(9, 13, '2024-06-16'),

-- User 10: Lisa
(10, 11, '2024-07-01'),
(10, 13, '2024-07-04'),
(10, 16, '2024-07-07'),

-- User 11: Jennie
(11, 2,  '2024-07-10'),
(11, 14, '2024-07-13'),
(11, 17, '2024-07-16'),

-- User 12: Rose
(12, 1,  '2024-08-01'),
(12, 4,  '2024-08-04'),
(12, 13, '2024-08-07'),

-- User 13: Jisoo
(13, 5,  '2024-08-10'),
(13, 9,  '2024-08-13'),
(13, 17, '2024-08-16'),

-- User 14: Murph
(14, 1,  '2024-09-01'),
(14, 2,  '2024-09-04'),
(14, 3,  '2024-09-07'),

-- User 15: Barbara
(15, 6,  '2024-09-10'),
(15, 11, '2024-09-13'),
(15, 16, '2024-09-16');

-- REVIEWS
INSERT INTO reviews (user_id, movie_id, rating)
VALUES
-- User 1: Mikasa → movies 1, 6, 10
(1, 1, 9),
(1, 6, 8),
(1, 10, 7),

-- User 2: Eren → 2, 3, 11
(2, 2, 8),
(2, 3, 9),
(2, 11, 8),

-- User 3: Armin → 1, 5, 9
(3, 1, 9),
(3, 5, 9),
(3, 9, 8),

-- User 4: Erwin → 6, 15, 8
(4, 6, 9),
(4, 15, 9),
(4, 8, 8),

-- User 5: Levi → 3, 8, 15
(5, 3, 9),
(5, 8, 8),
(5, 15, 8),

-- User 6: Tanjiro → 7, 4, 14
(6, 7, 8),
(6, 4, 9),
(6, 14, 8),

-- User 7: Nezuko → 7, 5, 16
(7, 7, 9),
(7, 5, 8),
(7, 16, 7),

-- User 8: Zenitsu → 4, 9, 12
(8, 4, 8),
(8, 9, 9),
(8, 12, 8),

-- User 9: Inosuke → 10, 12, 13
(9, 10, 7),
(9, 12, 8),
(9, 13, 8),

-- User 10: Lisa → 11, 13, 16
(10, 11, 9),
(10, 13, 9),
(10, 16, 8),

-- User 11: Jennie → 2, 14, 17
(11, 2, 8),
(11, 14, 9),
(11, 17, 8),

-- User 12: Rose → 1, 4, 13
(12, 1, 8),
(12, 4, 8),
(12, 13, 9),

-- User 13: Jisoo → 5, 9, 17
(13, 5, 9),
(13, 9, 9),
(13, 17, 8),

-- User 14: Murph → 1, 2, 3
(14, 1, 10),
(14, 2, 9),
(14, 3, 9),

-- User 15: Barbara → 6, 11, 16
(15, 6, 8),
(15, 11, 9),
(15, 16, 8);













