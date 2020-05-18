/* Description */

/*

You're very busy and have a lot of important events coming up. In order to ensure that you don't forget any of 
these events, you have decided to organize them.

The information about your events is stored in the table events, which has the structure:

id: unique event id;
name: the event name;
event_date: the event date in the format YYYY-MM-DD;
participants: the number of people that are going to attend this event.
After some thinking, you decide that it would be easier to navigate though your schedule if you could see all the
events ordered by the weekday on which they are scheduled. In order to do so, you want to sort all the events by 
the weekdays of their event_dates, meaning that Monday events should come first, Tuesday events should come next, 
and so on, with Sunday events coming last. In the case of a tie, the participants should be a tie-breaker; an event
with the largest number of participants should go first, because events with more attendees are more important. 
It is guaranteed that there are no events that have the same event_date and the same number of participants.

Given the table events, sort it as described above and return the resulting table.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE importantEvents()
BEGIN
	select * 
    from events
    ORDER BY WEEKDAY(event_date) asc,
    participants desc;
END


/*END*/