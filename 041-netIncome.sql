/* Description */

/*

You own a small company, and you keep track of its income in the accounting table, which has the following structure:

date: a unique date on which your company was open;
profit: the amount of money your company earned that day;
loss: the amount of money your company lost that day.
You've decided to sell the company, and in order to make the offer more appealing to potential buyers you need to
 create a financial report.

Given the accounting table, compose the resulting table with three columns: year, quarter and net_profit.
 The first column should contain the year, the second one should contain the quarter of that year, and the third one
  should contain the net income (profit - loss difference) of your company during that period. The resulting table
   should be sorted by the year in ascending order. If there are several rows with the same year, sort them by
    the quarter in ascending order.

Don't include year/quarter in the answer if there is no entry for it in the accounting table.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE netIncome()
BEGIN
	select YEAR(date) as year ,
    QUARTER(date) as quarter,
    sum(profit)-sum(loss) as net_profit
    from accounting
    group by year,quarter;
END


/*END*/