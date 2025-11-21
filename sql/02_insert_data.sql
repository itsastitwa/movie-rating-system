-- Insert sample users
INSERT INTO USERS VALUES (1, 'Alex', 'alex@mail.com');
INSERT INTO USERS VALUES (2, 'Priya', 'priya@mail.com');
INSERT INTO USERS VALUES (3, 'John', 'john@mail.com');

-- Insert sample movies
INSERT INTO MOVIES VALUES (1, 'Inception', 'Sci-Fi', 2010);
INSERT INTO MOVIES VALUES (2, 'Interstellar', 'Sci-Fi', 2014);
INSERT INTO MOVIES VALUES (3, 'The Dark Knight', 'Action', 2008);

-- Insert sample ratings
INSERT INTO RATINGS VALUES (101, 1, 1, 5, CURDATE());
INSERT INTO RATINGS VALUES (102, 2, 1, 4, CURDATE());
INSERT INTO RATINGS VALUES (103, 1, 2, 5, CURDATE());
INSERT INTO RATINGS VALUES (104, 3, 3, 5, CURDATE());