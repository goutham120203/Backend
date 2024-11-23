-- Insert genres into Genres table
INSERT INTO Genres (genre_name) VALUES ('Drama');
INSERT INTO Genres (genre_name) VALUES ('Crime');
INSERT INTO Genres (genre_name) VALUES ('Action');
INSERT INTO Genres (genre_name) VALUES ('Comedy');

-- Insert movies into Movies table without genre_id
INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('The Shawshank Redemption', TRUE, '2024-03-03', 'http://localhost:8080/image1.png');

INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('The Godfather', TRUE, '2024-09-21', 'http://localhost:8080/image2.png');

INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('The Dark Knight', TRUE, '2024-10-03', 'http://localhost:8080/image3.png');

INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('Pulp Fiction', TRUE, '2024-03-03', 'http://localhost:8080/image3.png');

INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('The Hangover', FALSE, '2024-11-03', 'http://localhost:8080/image5.png');

INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('Superbad', FALSE, '2025-03-03', 'http://localhost:8080/image6.png');

INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('Mad Max: Fury Road', FALSE, '2024-03-03', 'http://localhost:8080/image7.png');

INSERT INTO Movies (title, is_popular, release_date, poster_url)
VALUES ('Die Hard', FALSE, '2024-03-03', 'http://localhost:8080/image7.png');

-- Assuming movie IDs and genre IDs, associate movies with genres
-- Example: Let's assume 'The Shawshank Redemption' has movie_id = 1, and 'Drama' has genre_id = 1

-- The Shawshank Redemption (Drama)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (1, 1);

-- The Godfather (Drama, Crime)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (2, 1);
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (2, 2);

-- The Dark Knight (Action, Crime)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (3, 3);
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (3, 2);

-- Pulp Fiction (Crime, Comedy)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (4, 2);
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (4, 4);

-- The Hangover (Comedy)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (5, 4);

-- Superbad (Comedy)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (6, 4);

-- Mad Max: Fury Road (Action)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (7, 3);

-- Die Hard (Action)
INSERT INTO Movie_Genres (movie_id, genre_id) VALUES (8, 3);



