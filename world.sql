-- 1. What query would you run to get all the countries that speak Slovene. Your query should return the name of the
-- country, language and language percentage. You query should arrange the result by language percentage in
-- descending order.

select name, languages.language, languages.percentage from countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = 'Slovene'
ORDER BY percentage DESC;

-- 2. What query would you run to display the total number of cities for each country. Your query should return the
-- name of the country and the total number of cities. You query should arrange the result by number of cities in
-- descending order.

SELECT countries.name, count(cities.name) AS sities FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id
ORDER BY count(cities.name) DESC;

-- 3. What query would you run to get all the cities in Mexico with a population of greater than 500,000. Your query
-- should arrange the result by population in descending order.
SELECT cities.name, cities.population FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Mexico' and cities.population > 500000;

-- 4. What query would you run to get all language in each country with a percentage greater than 89%. Your query
-- should arrange the result by percentage in descending order.

S





