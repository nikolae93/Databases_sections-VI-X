/* Description */

/*

You are developing a calendar application that will allow users to schedule various events on different dates.
The dates are all stored in the server local time as a DATETIME. You want to display the dates using
the settings specified by the user.

Event dates and user settings are stored in the events and settings tables, which have the following structures:

events:
event_id: the unique event ID;
date: the time and date of the event;
user_id: the ID of the user who scheduled this event.
settings
user_id: the unique ID of the user with these settings;
timeshift: the number of minutes the user's time differs from the server (this could potentially be negative or zero);
hours: the number of hours in the user's clock (either 12 or 24).

The displayed dates should have the format yyyy-mm-dd hh:mm if the user's clock has 24 hours. Otherwise, the format
should be yyyy-mm-dd hh:mm <p>, where <p> is either AM or PM depending on the time.

Given the events and settings tables, compose the result as follows: The resulting table should have two columns, 
event_id and formatted_date, that contain the event IDs and the formatted event dates according to settings of the 
user who scheduled that event, respectively. The table should be sorted in ascending order by the event IDs.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE localCalendar()
BEGIN
	SELECT event_id, 
    IF(hours=12, DATE_FORMAT(DATE_ADD(date, INTERVAL timeshift MINUTE), '%Y-%m-%d %h:%i %p') , 
    DATE_FORMAT(DATE_ADD(date, INTERVAL timeshift MINUTE), '%Y-%m-%d %H:%i')) formatted_date
    FROM events
    JOIN settings USING (user_id);
END


/*END*/