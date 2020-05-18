/* Description */

/*

You recently started a new job, and you were frustrated to discover that the company you joined has a very poorly 
written front-end client application. It doesn't even have validation checks for data entered by users! 
The biggest problem is with the phone_number field, which your company uses to send automatic notifications to users.

Your first task as a company employee is to retrieve all the valid records from the given table of phone numbers. 
The record is valid if its phone_number is a valid American or Canadian phone number, which means that it has a format 
of 1-###-###-#### or (1)###-###-####, where # stands for any digit from 0 to 9.

Information is stored in the table phone_numbers, which has the following fields:

name: the user's first name;
surname: the user's unique surname;
phone_number: the user's unique phone number.
You should return a new table that contains only the valid records from the phone_numbers table, sorted by the users' 
surnames.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE validPhoneNumbers()
BEGIN
	select * from phone_numbers
    WHERE phone_number REGEXP '^((1-)|\\(1\\))[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    order by surname;
END


/*END*/