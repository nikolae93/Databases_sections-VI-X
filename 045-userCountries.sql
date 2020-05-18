/* Description */

/*

You are really interested in statistics, and your new project is to gather some information about the users
of a big social network. More specifically, you want to know which countries these users are from. Using the 
social network's API, you managed to collect enough data to compose two tables users and cities, which have the 
following structures:

users:
id: the unique user ID;
city: the name of the city where this user lives;
cities:
city: a unique city name;
country: the name of the country where this city is located.
Given the tables users and cities, write a select statement that returns two columns id and country consisting of 
user ids and the countries where they live respectively. If a user's city is missing from the cities table, 
the country column should contain "unknown" instead.

Return the table sorted by users' ids.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE userCountries()
BEGIN
  
    SELECT users.id, IFNULL(cities.country, "unknown") AS country
	FROM users 
	LEFT JOIN cities 
	ON users.city=cities.city
	ORDER BY id;

END


/*END*/