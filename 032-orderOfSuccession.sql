/* Description */

/*

The kingdom has been given terrible news: the King has passed away. While the nation is mourning, the noblemen need 
to decide who will take the throne next.

The late King had many children, and now it is necessary to determine their order of succession according to their 
seniority.

The list of the King's children is represented as a table Successors with the following attributes:

name: the child's name;
birthday: the date of their birthday (it is guaranteed that birthday dates are unique);
gender: their gender (a character equal to 'M' or 'F').
The resulting table should contain the names of the King's heirs in order of their succession to the throne as 
determined by their age, and preceded by their potential future titles (i.e. "King name" or "Queen name").

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE orderOfSuccession()
BEGIN
	SELECT case WHEN gender = "F" THEN CONCAT("Queen ",name) ELSE
    CONCAT("King ",name) end as name FROM
    Successors
    order by birthday;
END


/*END*/