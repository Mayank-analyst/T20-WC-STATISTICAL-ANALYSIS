SELECT * FROM matches;

SELECT * FROM points_table;

SELECT * FROM batting_stats;

SELECT * FROM bowling_stats;

SELECT * FROM awards;


A. Basic Exploration

1. (Total Matchess)

SELECT COUNT(*) AS total_matches
FROM matches;  

2. Total cities

SELECT COUNT(DISTINCT city) AS cities
FROM matches;
	  
3. Total Venues

SELECT COUNT(DISTINCT venue) AS venues
FROM matches;	  
	  
4. Total Teams participating

SELECT DISTINCT team
FROM points_table
ORDER BY team;	  

5. Most wins by a team

SELECT winner, COUNT(*) AS wins
FROM matches
GROUP BY winner
ORDER BY wins DESC;

6. Matches played in each city

SELECT city, COUNT(*) AS matches_played
FROM matches
GROUP BY city
ORDER BY matches_played DESC;

7. Matches won defending

SELECT COUNT(*) AS wins_by_runs
FROM matches
WHERE Win_type LIKE '%runs%';

8. Matches won chasing

SELECT COUNT(*) AS wins_by_runs
FROM matches
WHERE Win_type LIKE '%wickets%'; 

9. Biggest margin of victory by runs

SELECT *
FROM matches
WHERE Win_type LIKE '%runs%'
ORDER BY margin DESC
LIMIT 5;


B. Batting Analysis

10. Top Runs scorers

SELECT player, SUM(runs) AS total_runs
FROM batting_stats
GROUP BY player
ORDER BY total_runs DESC
LIMIT 5;

11. Most sixes

SELECT player, SUM(sixes) AS total_sixes
FROM batting_stats
GROUP BY player
ORDER BY total_sixes DESC
LIMIT 5;

12. Most fours

SELECT player, SUM(fours) AS total_fours
FROM batting_stats
GROUP BY player
ORDER BY total_fours DESC
LIMIT 5;

13. Best strike Rate

SELECT player, SUM(runs) AS total_runs, AVG(strike_rate) AS avg_sr
FROM batting_stats
GROUP BY player
HAVING total_runs > 100
ORDER BY avg_sr DESC
LIMIT 5;

14. Best average

SELECT player, SUM(runs) as total_runs, SUM(innings) as total_innings,
ROUND(SUM(runs)/SUM(innings),2) as best_average
FROM batting_stats
GROUP BY Player
ORDER BY best_average DESC
LIMIT 5;

15. Total runs team scored

SELECT team, SUM(runs) AS team_runs
FROM batting_stats
GROUP BY team
ORDER BY team_runs DESC;


C. Bowling Analysis

16. Most wickets

SELECT player, SUM(wickets) AS total_wickets
FROM bowling_stats
GROUP BY player
ORDER BY total_wickets DESC
LIMIT 5;

17. Best economy

SELECT player, AVG(economy) AS avg_economy
FROM bowling_stats
GROUP BY player
HAVING SUM(overs) > 5
ORDER BY avg_economy ASC
LIMIT 5;
 
18. Most expensive bowlers( in terms of runs leaking)

SELECT player, SUM(runs_conceded) AS total_runs_conceded
FROM bowling_stats
GROUP BY player
ORDER BY total_runs_conceded DESC
LIMIT 5; 

19. Best bowling performance

SELECT player, wickets, runs_conceded
FROM bowling_stats
ORDER BY wickets DESC, runs_conceded ASC
LIMIT 5;

20. Total wickets by teams

SELECT team, SUM(wickets) AS team_wickets
FROM bowling_stats
GROUP BY team
ORDER BY team_wickets DESC;


D. Advanced Insights

21. Player with most awards

SELECT Playerl, COUNT(*) AS total_awards
FROM awards
GROUP BY Playerl
ORDER BY total_awards DESC
LIMIT 10;

22. Team with most awards

SELECT team, COUNT(*) AS awards
FROM awards
GROUP BY team
ORDER BY awards DESC;

23. Best All rounder

SELECT 
b.player,
SUM(b.runs) AS total_runs,
SUM(bw.wickets) AS total_wickets
FROM batting_stats b
JOIN bowling_stats bw
ON b.player = bw.player
GROUP BY b.player
ORDER BY total_runs DESC, total_wickets DESC
LIMIT 5;

24. Most impactful batter

SELECT player,
SUM(runs) AS total_runs,
AVG(strike_rate) AS avg_sr
FROM batting_stats
GROUP BY player
HAVING total_runs > 100
ORDER BY avg_sr DESC
LIMIT 5;

25. Most impactful bowler

SELECT player,
SUM(wickets) AS total_wickets,
AVG(economy) AS avg_economy
FROM bowling_stats
GROUP BY player
HAVING total_wickets >= 5
ORDER BY total_wickets DESC, avg_economy ASC
LIMIT 5;