/*
Equilateral = 3 equal
Isosceles = 2 equal
Scalene = none equal
Not A Triangle
*/
SELECT CASE 
        WHEN A + B <= C OR B + C <= A OR A + C <= B THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS triangle_type
    FROM triangles;