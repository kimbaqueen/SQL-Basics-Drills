-- 1
CREATE TABLE person (
  personid SERIAL PRIMARY KEY, 
  name VARCHAR(100), 
  age INTEGER, 
  height INTEGER,
  city VARCHAR(100),
  favoritecolor VARCHAR(100)
);

-- 2
INSERT INTO person (name, age, height, city, favoritecolor)
VALUES ('Kim', 35, 162, 'SLC', 'yellow');

INSERT INTO person (name, age, height, city, favoritecolor)
VALUES ('Dallin', 36, 185, 'SLC', 'red');

INSERT INTO person (name, age, height, city, favoritecolor)
VALUES ('Basile', 4, 101, 'SLC', 'blue, yellow, red');

INSERT INTO person (name, age, height, city, favoritecolor)
VALUES ('Laszlo', 2, 91, 'SLC', 'blue');

INSERT INTO person (name, age, height, city, favoritecolor)
VALUES ('Rebecca', 67, 149, 'WVC', 'red');

-- 3
SELECT * FROM person
ORDER BY height DESC;

-- 4
SELECT * FROM person
ORDER BY height;

-- 5
SELECT * FROM person
ORDER BY age DESC;

-- 6
SELECT * FROM person
WHERE age >20;

-- 7
SELECT * FROM person
WHERE age = 20;

-- 8
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- 9
SELECT * FROM person
WHERE age != 27;

-- 10
SELECT * FROM person
WHERE favoritecolor != 'red';

-- 11
SELECT * FROM person
WHERE favoritecolor != 'red' AND favoritecolor != 'blue';

-- 12
SELECT * FROM person
WHERE favoritecolor = 'orange' OR favoritecolor = 'green';

-- 13
SELECT * FROM person
WHERE favoritecolor IN ('orange', 'green', 'blue');

-- 14
SELECT * FROM person
WHERE favoritecolor IN ('yellow', 'purple');