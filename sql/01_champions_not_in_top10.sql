-- CHECK WINNERS WHO ARE NOT IN THE TOP 10 LIST? :

SELECT DISTINCT Winner
FROM world_cup_history
WHERE Winner NOT IN(
	SELECT Country 
    FROM rankings_jul_ascii
    WHERE 'Rank'<= 10)
    ;
