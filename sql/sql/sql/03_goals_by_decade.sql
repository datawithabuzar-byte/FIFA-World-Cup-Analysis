-- How has average scoring changed across decades?

SELECT
	FLOOR(Year/10)*10 AS Decade,
    ROUND(AVG(Goals_per_match), 2) AS Avg_Goals_Per_Match
    FROM world_cup_history
    GROUP BY Decade
    ORDER BY Decade;
