SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population)) as city_pop
FROM city
JOIN country
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;