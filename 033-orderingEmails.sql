/* Description */

/*

You've started to receive a lot of emails every day, and you decide to sort them in order to make it quicker to 
navigate through them.

Information about your emails is stored in a table emails, which has the following structure:

id: the unique email id;
email_title: the title of the email;
size: the size of the email's body in bytes.
You decide to sort all the emails by their body sizes in descending order, because you think that the bigger an email 
is the more important it is. However, you don't like having the sizes written in bytes because they are usually too 
large and don't make much sense. You want them to be written in kilobytes (1 Kb = 210 bytes) and megabytes 
(1 Mb = 220 bytes) instead, rounded down if necessary. For example, 21432432 bytes is equal to 20 megabytes and 
460912 bytes, so the result should be rounded down to 20 Mb.

Given the table emails, build a table as follows: The resulting table should have the columns id, email_title, and 
short_size, and should be sorted in descending order by the initial sizes of the emails. It is guaranteed that all 
the emails are of unique sizes, so there will not be any ties.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE orderingEmails()
BEGIN
	select id, email_title, 
    case 
    when size<1024 then CONCAT(0," Kb") 
    when size=1024 then CONCAT(1," Kb")
    when size>1024 and size/1024<1024 THEN CONCAT(floor(size/1024)," Kb")
    else CONCAT(floor(size/1048576)," Mb")
    end as short_size
    from emails
    order by size desc;
END


/*END*/