/* Description */

/*

During the most recent social event you attended, you suddenly realized that you forgot your USB drive at a 
previous event. You're pretty sure that you had your flash drive with you just last week, which means that you 
probably lost it during one of the events of the last 7 days. You want to find all the events you attended during 
this period.

The list of events you've attended (including the most recent one) is stored in a table called Events. It has
 three columns:

id: the unique id of the event;
name: the name of the event;
event_date: the date of the event.
You want to come up with the list of all the events you attended over the past 7 days, except for the very last one
 (since you know you lost your flash drive before then). Return this list as a table with columns name and event_date
  sorted by event dates in descending order.

It is guaranteed that there is at most one event on any given day.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE pastEvents()
BEGIN
	SELECT name, event_date 
    from Events

   WHERE DATEDIFF((select event_date from Events ORDER BY event_date desc limit 1),event_date) >0
   and DATEDIFF((select event_date from Events ORDER BY event_date desc limit 1),event_date) <=7

    ORDER BY event_date desc;

END


/*END*/