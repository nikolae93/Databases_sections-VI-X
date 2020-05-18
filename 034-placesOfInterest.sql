/* Description */

/*

You are trying to decide where you want to go on your vacation, so your travel agency has provided you with a database
 of possible destinations.

This database contains the table countryActivities, which has the following structure:

id: the unique id of the record;
country: the country name;
region: the region of this country;
leisure_activity_type: the type of activity provided in the region. This can only be equal to one of the 
following values: Adventure park, Golf, Kart racing, River cruise;
number_of_places: the number of resorts in the region at which you can do this activity.
You want to see how many resorts in each country provide the activities you are interested in before you decide 
where to go on your vacation, but it's hard to do this using only the table provided by your travel agency. 
To make things easier, you have decided to create a new table with a better structure.

Given the countryActivities table, compose the resulting table with five columns: country, adventure_park, golf, 
river_cruise and kart_racing. The first column should contain the country name, while the second, third, fourth, 
and fifth columns should contain the number of resorts in the country that offer Adventure park, Golf, River cruise, 
and Kart racing, respectively. The table should be sorted by the country names in ascending order.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterest()
BEGIN
	SELECT country,
   sum(case when leisure_activity_type = "Adventure park" then number_of_places else 0 end) as adventure_park,
   sum(case when leisure_activity_type = "Golf" then number_of_places else 0 end) as golf,
   sum(case when leisure_activity_type = "River cruise" then number_of_places else 0 end) as river_cruise,
   sum(case when leisure_activity_type = "Kart racing" then number_of_places else 0 end) as kart_racing
   from countryActivities
   group BY country
   ORDER BY country;

END


/*END*/