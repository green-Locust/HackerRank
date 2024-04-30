
-- Find the city with the shortest name and its length
(SELECT CITY, LENGTH(CITY) AS name_length
FROM STATION
ORDER BY name_length ASC, CITY ASC
LIMIT 1)

UNION  -- Combine results from the first query with the next query

-- Find the city with the longest name and its length
(SELECT CITY, LENGTH(CITY) AS name_length
FROM STATION
ORDER BY name_length DESC, CITY ASC
LIMIT 1);