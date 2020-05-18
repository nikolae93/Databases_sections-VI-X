/* Description */

/*

You're going on vacation in a big city, and you've prepared a list of all the sights you'd like to visit.
 As you don't have much time and can't spend a whole day at one interesting place, you want to visit several 
 sights per day and walk from one site to another. But walking a long distance might be boring, so you won't walk 
 between two places if the distance between them is 5 km or more.

To find the route that you should take, you are going to find all pairs of places that are less than 5 km from each other.

The places of interests are stored in a table sights, which has the following attributes:

id: the unique ID of the place;
name: the name of the place;
x: the x coordinate of the place;
y: the y coordinate of the place.
The distance between the places is calculated with the assumption that they are just points on a 2D map.

Given the sights table, find all pairs of places that are less than 5 km from each other and return them as
a table with the columns place1 and place2. Sort them in lexicographical order. The places in the pairs should also
be sorted lexicographically.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterestPairs()
BEGIN

	SELECT a.name place1, b.name place2
    FROM
    sights a CROSS JOIN sights b
    where 1=1
    AND SQRT(power(a.x-b.x,2)+power(a.y-b.y,2))<5
    and a.name < b.name 
    ORDER BY
    a.name, 
    b.name;
    
END


/*END*/