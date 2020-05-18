/* Description */

/*

You have a table scores that contains information about a series of soccer games. Your goal is to determine the winner
of the series. A team is declared the winner if it won more games than the other team. If both teams had the same
number of wins, then the winner is determined by the better goal difference (the difference between the goals that a
team scores and the goals that the opposing team scores on them over all the games). If the goal differences are equal, 
the winner is the team that scored more goals during away games (i.e. games when it was not the host team). 
The result is the index of the winning team. If the above criteria are not sufficient for determining the winner,
return 0.

The scores table contains the following columns:

match_id - the unique ID of the match;
first_team_score - the score of the 1st team in the current match;
second_team_score - the score of the 2nd team in the current match;
match_host - the team that is the host of the match (can be 1 or 2).
Your task is to return a new table with a single column winner, which can contain 1, 2, or 0.

*/

/*Solution*/

/*Please add ; after each select statement*/
CREATE PROCEDURE soccerGameSeries()
BEGIN

select
case
when stats.first_team_wins > stats.second_team_wins then 1
when stats.second_team_wins > stats.first_team_wins then 2
when stats.goal_diff > 0 then 1
when stats.goal_diff < 0 then 2
when stats.first_team_points > stats.second_team_points then 1
when stats.first_team_points < stats.second_team_points then 2
else 0
end as winner
from(
select
sum(scores.first_team_score > scores.second_team_score) as first_team_wins,
sum(scores.first_team_score < scores.second_team_score) as second_team_wins,
sum(scores.first_team_score - scores.second_team_score) as goal_diff,
sum((scores.match_host=2) * scores.first_team_score) as first_team_points,
sum((scores.match_host=1) * scores.second_team_score) as second_team_points
from scores
) as stats;

END


/*END*/