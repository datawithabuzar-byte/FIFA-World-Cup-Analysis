# FIFA World Cup Analytics Dashboard

An end-to-end data analytics project exploring 90+ years of FIFA World Cup history — 
from tournament winners and top scorers to current team rankings and confederation dominance.
Built using SQL for analysis and Tableau for visualization.

## 🔗 Live Dashboard
[View Interactive Dashboard on Tableau Public (https://public.tableau.com/app/profile/md.abuzar.khan/viz/FIFAWorldCup_17852711029050/FIFAWORLDCUPANALYSIS))

![Dashboard Screenshot]<img width="1372" height="764" alt="Screenshot 2026-07-29 at 3 05 12 AM" src="https://github.com/user-attachments/assets/ba557fcf-2416-486d-9b12-23760942dc30" />

## 📊 Project Overview
This project analyzes historical FIFA World Cup data to answer real analytical questions:
- Has scoring changed over the decades?
- Does the tournament's top scorer's team usually win?
- Which confederations dominate in World Cup titles vs current rankings?
- Which past champions have fallen out of today's Top 10?

## 🛠️ Tools Used
- **MySQL** — data cleaning, joins, aggregations, and analysis
- **Tableau Public** — interactive dashboard and visualization

## 📁 Data Sources
Five datasets covering FIFA World Cup history (1930–2026):
- `world_cup_history` — tournament winners, runners-up, goals, matches
- `top_scorers_ascii` — golden boot winners by year
- `rankings_jul_ascii` — current team rankings and confederations (Jan & Jul 2026 snapshots)
- `major_competitions_ascii` — reference data on major football competitions

## 🔍 Key Insights
- **Scoring has declined over time**: Average goals per match dropped sharply from the 
  high-scoring 1930s–50s era and has remained lower and more stable in recent decades.
- **Top scorer ≠ tournament winner**: Across 23 World Cups, the tournament's top scorer's 
  country won the tournament only 3 times — winning teams tend to spread goals across players 
  rather than rely on one standout scorer.
- **UEFA and CONMEBOL dominate historically**: These two confederations account for the vast 
  majority of all World Cup titles combined, while AFC, CAF, and CONCACAF barely register.
- **Fallen giants**: West Germany is the only past World Cup-winning nation currently 
  outside the FIFA Top 10 rankings — most historic champions remain elite today.

## 💻 SQL Highlights
Sample query — checking whether the tournament winner and top scorer's country match:

\`\`\`sql
 SELECT 
        h.Year,
        h.Winner,
        t.Country AS Top_Scorer_Country,
        CASE
			WHEN h.Winner = t.Country THEN 'Yes'
            ELSE 'No'
		END AS Winner_Was_Top_Scorer_Country
        FROM world_cup_history AS h
        JOIN top_scorers_ascii AS t
			ON h.Year = t.Year;
\`\`\`

See the full set of queries in [`/sql`](./sql).

## 📈 Dashboard Features
- Goals per match trend across 9 decades of World Cup history
- Confederation-level comparison of total World Cup titles
- Top scorer vs. tournament winner breakdown
- List of former champions no longer in the current Top 10

---
*Built as a beginner data analytics portfolio project — first hands-on project combining 
SQL and Tableau end-to-end.*
