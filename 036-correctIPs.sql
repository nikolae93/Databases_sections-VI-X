/* Description */

/*

The company you work for has a database with the IP addresses of all the company's computers in it. When a new 
computer is purchased, an employee adds its IPv4 address to this database. Unfortunately, you've just discovered 
that there is no address validation, so some of the records are incorrect.

Now your boss wants you to write a program that will find and retain only the correct records from this table. 
A record is correct if the IP it contains is a valid IPv4 address, and either the first or the second component in 
the host part is a two-digit number.

The ips table contains the following columns:

id: the unique ID of the computer;
ip: the unique IP address of the computer.
Your task is to create a new table that contains only the correct records from the given ips table. 
This table should be sorted by id.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE correctIPs()
BEGIN
	select * from ips
    WHERE IS_IPV4(ip)
    AND length(SUBSTRING_INDEX(ip, '.', -2)) > 3
    order by id asc;
END


/*END*/