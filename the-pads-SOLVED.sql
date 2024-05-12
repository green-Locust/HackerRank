SELECT CONCAT(name,"(", SUBSTRING(occupation,1,1),")") AS occ_initial
FROM occupations
ORDER BY 1;

SELECT CONCAT("There are a total of", " ", COUNT(occupation), " ", LOWER(occupation), "s", ".") AS occ_num
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation), occupation;