-- 1. View all movies
SELECT * FROM MOVIES;

-- 2. Show average rating per movie
SELECT movie_id, AVG(rating) AS avg_rating
FROM RATINGS
GROUP BY movie_id;

-- 3. List movies with average rating
SELECT m.title, AVG(r.rating) AS avg_rating
FROM MOVIES m
JOIN RATINGS r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC;

-- 4. Ratings given by each user
SELECT u.user_name, m.title, r.rating
FROM RATINGS r
JOIN USERS u ON r.user_id = u.user_id
JOIN MOVIES m ON r.movie_id = m.movie_id;

-- 5. Find top-rated movies (avg >= 4.5)
SELECT m.title, AVG(r.rating) avg_rating
FROM MOVIES m
JOIN RATINGS r ON m.movie_id = r.movie_id
GROUP BY m.title
HAVING AVG(r.rating) >= 4.5;
