-- Movies Table
CREATE TABLE Movies (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    is_popular BOOLEAN,
    release_date DATE,
    poster_url VARCHAR(255)
);

-- Genres Table
CREATE TABLE Genres (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Join Table for Movies and Genres
CREATE TABLE Movie_Genres (
    movie_id BIGINT,
    genre_id BIGINT,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES Genres(id) ON DELETE CASCADE
);
