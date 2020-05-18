/* Description */

/*

You've been traveling all over the world for the past year, and now it's time for you to come home. 
You marked each city that you visited on a map in the order that you visited them, and wrote down the cities' 
coordinates. For the sake of simplicity, the cities are assigned coordinates on a plane map, so they can be written as 
(x, y).

The information about the cities you visited is stored in the table cities, which has the structure:

id: the unique city ID;
x: the x coordinate of the city;
y: the y coordinate of the city.
Now that your journey is over, you're curious about the distance you covered. Given the cities table, your task is
 to calculate the total length of your route as follows: First, calculate the Euclidean distance between the first 
 and second cities, then add it to the distance between the second and the third cities, and so on.

Return the table with a single total column containing only one row which contains the total length of your route, 
calculated as described above.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE routeLength()
BEGIN

	  SELECT
      ROUND(sum(sqrt(power(c1.x-c2.x,2)+power(c1.y-c2.y,2))),9) as total
      from 
      cities c1
      INNER JOIN cities c2 on 1=1 AND
      c1.id = c2.id-1;
      
END


/*END*/