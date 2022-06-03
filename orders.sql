-- 1
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY, 
  person_id INTEGER,
  product_name VARCHAR(100),
  product_price INTEGER,
  quantity INTEGER
);

-- 2
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1,'hat', 75, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (2,'blazer', 65, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (3,'shoes', 50, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (4,'shoes', 50, 2);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (5,'blazer', 65, 2);

-- 3
SELECT * FROM orders;

-- 4
SELECT SUM(quantity) FROM orders;

-- 5
SELECT SUM(product_price*quantity) FROM orders;

-- 6
SELECT SUM(product_price * quantity) 
FROM orders
GROUP BY person_ID;