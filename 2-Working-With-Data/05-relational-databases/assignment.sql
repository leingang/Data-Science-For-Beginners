-- SQLite
.tables

-- all city names in the `Cities` table
SELECT city from Cities;

-- all cities in Ireland in the `Cities` table
SELECT city from Cities WHERE country="Ireland";

-- all airport names with their city and country
SELECT a.name, c.city, c.country
FROM Airports AS a, Cities AS c
WHERE a.city_id = c.id;

-- all airports in London, United Kingdom
SELECT a.name
FROM Airports AS a, Cities AS c
WHERE a.city_id = c.id
AND c.city = "London"
AND c.country = "United Kingdom";
