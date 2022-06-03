-- 1
INSERT INTO artist (name, artist_id)
VALUES ('Nickelback', 276);

INSERT INTO artist (name, artist_id)
VALUES ('O-Town', 277);

INSERT INTO artist (name, artist_id)
VALUES ('Los Kjarkas', 278);

-- 2
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

-- 3
SELECT * FROM artist
ORDER BY name LIMIT 5;

-- 4 start with
SELECT * FROM artist
WHERE name like ('Black%');

-- 5 contains
SELECT * FROM artist
WHERE name like ('%Black%');