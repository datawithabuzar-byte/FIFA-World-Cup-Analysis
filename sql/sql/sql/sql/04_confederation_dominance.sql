-- Which confederation dominates the tournament?

SELECT 
    Confederation,
    SUM(World_Cup_Titles) AS Total_WC_Titles,
    COUNT(*) AS Num_Countries_In_Rankings,
    ROUND(AVG(Points), 2) AS Avg_Points
    FROM rankings_jul_ascii
    GROUP BY Confederation
    ORDER BY Total_WC_Titles DESC;
