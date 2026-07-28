-- Detailed row-by-row comparison: tournament winner vs top scorer's country

SELECT 
        h.Year,
        h.Winner,
        t.Country AS Top_Scorer_Country,
        t.Player,
        t.Goals,
        CASE
			WHEN h.Winner = t.Country THEN 'Yes'
            ELSE 'No'
		END AS Winner_Was_Top_Scorer_Country
        FROM world_cup_history AS h
        JOIN top_scorers_ascii AS t
			ON h.Year = t.Year;
            
