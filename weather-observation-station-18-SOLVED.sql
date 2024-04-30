
/*
In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|

x1 = MIN value of LAT_N 
y1 = MIN value of LONG_W
x2 = MAX value of LAT_N
y2 = MAX value of LONG_W
*/
SELECT ABS(((min_lat - max_lat) + (min_long - max_long)))
FROM
(SELECT ROUND(MIN(LAT_N), 4) AS min_lat, ROUND(MIN(LONG_W), 4) AS min_long,
ROUND(Max(LAT_N), 4) AS max_lat, ROUND(MAX(LONG_W), 4) AS max_long
FROM station
) plane;