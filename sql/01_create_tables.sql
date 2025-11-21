-- Creating USERS table
CREATE TABLE USERS (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    email VARCHAR(100)
);

-- Creating MOVIES table
CREATE TABLE MOVIES (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT
);

-- Creating RATINGS table
CREATE TABLE RATINGS (
    rating_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    rating_date DATE,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (movie_id) REFERENCES MOVIES(movie_id)
);

