-- Does the tournament's top scorer's country usually wins the tournament

 SELECT
				CASE
					WHEN h.Winner = t.Country THEN 'Yes'
                    ELSE 'No'
                    END AS Winner_Was_Top_Scorer_Country,
                    COUNT(*) AS Number_of_Tournaments
                    FROM world_cup_history AS h
                    JOIN top_scorers_ascii AS t
						ON h.Year = t.Year
                        GROUP BY Winner_Was_Top_Scorer_Country;
