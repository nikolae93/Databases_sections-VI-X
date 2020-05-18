/* Description */

/*

You are developing an alarm clock app that works as follows: the user can set a date and a time, and the app
 will ring every week at the given time, starting at the given date until the end of the current year.

The starting date is the only record in the userInput table, which has the following structure:

input_date: the date and time of the first alarm (of a DATETIME type).
Given the table, your task is to compose the resulting table with a single column alarm_date. This column should
contain all dates (including the time) when the alarm clock will ring. The entries should be arranged in
ascending chronological order.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE alarmClocks()
BEGIN
	
    set @d := (select input_date from userInput);
    set @i := @d;

    drop TABLE if EXISTS alarmList;

    CREATE TABLE alarmList(
        alarm_date DATETIME
    );

    WHILE YEAR(@d) = YEAR(@i) DO
      INSERT INTO alarmList (alarm_date)
      SELECT @d;
      set @d := @d + INTERVAL 7 DAY;
      end WHILE;

      select * from alarmList;

END


/*END*/