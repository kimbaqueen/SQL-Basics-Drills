-- 1 update all with numbers to null.
UPDATE customer
SET fax = null
WHERE fax IS NOT null;

-- 2 set company to self, where null (no company)
UPDATE customer
SET company = 'Self'
WHERE company IS null;

-- 3 Update last name to Thompson for Julia Barnet
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett';

-- 4 Find customer by email and change support rep to 4
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

-- 5 No genre name when I select all from track table. Set composer to The Darkness around us, for all tracks where genre is Metal & have no composer. 
UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
AND composer IS null;

