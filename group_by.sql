-- 1 Sum of total & grouped by state.
SELECT SUM(total), billing_state
FROM invoice
GROUP BY billing_state;

-- 2 Average track length by album. Ordered by the averages.
SELECT AVG(milliseconds), album_id
FROM track
GROUP BY album_id
ORDER BY 1;

-- 3 count how many albums artists with ID 8 & 22 using COUNT, WHERE/IN, GROUP BY
SELECT COUNT(*), artist_id
FROM album
WHERE artist_id IN (8,22)
GROUP BY artist_id;