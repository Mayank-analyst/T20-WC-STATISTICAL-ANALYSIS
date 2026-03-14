# ICC Men's T20 World Cup 2026 – Data Analysis Dashboard

## Project Overview

This project analyzes match and player performance data from the **ICC Men's T20 World Cup**.
The goal was to transform raw cricket datasets into meaningful insights using **Excel, SQL, and Power BI**.

The final result is an interactive **3-page Power BI dashboard** that provides insights into:

* Tournament overview
* Batting performance
* Bowling performance

The dashboard helps analyze team performance, player statistics, and key tournament metrics.

---

# Tools & Technologies

* **Excel** – Data cleaning and preprocessing
* **SQL (SQLite)** – Data querying and analysis
* **Power BI** – Data modeling, DAX calculations, and dashboard visualization

---

# Dataset Description

The dataset consists of multiple CSV files containing tournament statistics:

| File              | Description                                                 |
| ----------------- | ----------------------------------------------------------- |
| matches.csv       | Match details including teams, venues, winners, and margins |
| batting_stats.csv | Player batting statistics (runs, strike rate, fours, sixes) |
| bowling_stats.csv | Player bowling statistics (overs, wickets, economy)         |
| points_table.csv  | Team standings in the tournament                            |
| awards.csv        | Player awards and achievements                              |

---

# Data Cleaning (Excel)

Initial preprocessing was done using **Microsoft Excel**:

Steps performed:

* Removed duplicates and blank rows
* Standardized team names
* Cleaned inconsistent text values
* Separated margin values into numerical format
* Verified column data types
* Exported clean datasets as CSV files

This step ensured the data was ready for SQL analysis.

---

# SQL Analysis (SQLite)

All datasets were imported into **SQLite** and converted into relational tables.

### Tables Created

* matches
* batting_stats
* bowling_stats
* points_table
* awards

### Key SQL Analysis Performed

Some analytical queries included:

**Top Run Scorers**

```sql
SELECT player, SUM(runs) AS total_runs
FROM batting_stats
GROUP BY player
ORDER BY total_runs DESC
LIMIT 10;
```

**Top Wicket Takers**

```sql
SELECT player, SUM(wickets) AS total_wickets
FROM bowling_stats
GROUP BY player
ORDER BY total_wickets DESC
LIMIT 10;
```

**Most Wins by Teams**

```sql
SELECT winner, COUNT(*) AS total_wins
FROM matches
GROUP BY winner
ORDER BY total_wins DESC;
```

**Matches Hosted by City**

```sql
SELECT city, COUNT(*) AS total_matches
FROM matches
GROUP BY city
ORDER BY total_matches DESC;
```

These queries helped validate the dataset and uncover key tournament insights.

---

# Power BI Dashboard

The cleaned and analyzed data was imported into **Power BI** to build a fully interactive dashboard.

The dashboard consists of **three pages**.

---

# 1. Tournament Overview

This page provides a high-level summary of the tournament.

### Key Metrics

* Total Matches Played
* Total Teams
* Total Runs Scored
* Total Wickets Taken

### Visualizations

* Most wins by teams
* Cities hosting the most matches
* Venues with the most matches
* Wins comparison (chasing vs defending)

This page highlights overall tournament trends.

---
## Campaign Overview 

![Overview](T20%20WC%20STATISTICAL%20ANALYSIS/DASHBOARD/CAMPAIGN%20OVERVIEW.png)

# 2. Batting Analysis

This page focuses on batting performance across the tournament.

### Key Metrics

* Total Centuries
* Total Half Centuries
* Total Fours
* Total Sixes

### Visualizations

* Top run scorers
* Highest strike rate batters
* Most centuries by players
* Most fifties by players
* Boundary distribution (fours vs sixes)
* Team boundary contribution

This analysis helps identify the most aggressive and consistent batters.

---
## Batting Analysis 

![Batting Analysis](T20%20WC%20STATISTICAL%20ANALYSIS/DASHBOARD/BATTING%20STATISTICAL%20ANALYSIS.png)

# 3. Bowling Analysis

This page analyzes bowling performance.

### Key Metrics

* Total Wickets Taken
* Total Overs Bowled
* 4-Wicket Hauls
* 5-Wicket Hauls

### Visualizations

* Top wicket takers
* Best economical bowlers
* Wickets taken by team
* Overs vs runs conceded
* Most 4-wicket hauls
* Most 5-wicket hauls

This page highlights the most impactful bowlers in the tournament.

---
## Bowling Analysis

![Bowling Analysis](T20%20WC%20STATISTICAL%20ANALYSIS/DASHBOARD/BOWLING%20STATISTICAL%20ANALYSIS.png)

# Key Insights

Some notable insights from the analysis:

* **Sahibzada Farhan** was the top run scorer with **383 runs**.
* **Jasprit Bumrah** finished as the leading wicket-taker with **14 wickets**.
* **India** recorded the highest number of wins in the tournament.
* **Colombo** hosted the most matches among all cities.
* Most matches were won while **chasing rather than defending**.

---

# Dashboard Features

* Interactive slicers for **city and venue**
* Clean color theme based on tournament branding
* Player-focused performance visuals
* Multi-page navigation for better storytelling

---

# Project Workflow

Data Collection → Excel Cleaning → SQL Analysis → Power BI Visualization

This workflow replicates a **real-world data analytics pipeline**, demonstrating skills in data preparation, querying, and visualization.

---

# Conclusion

This project demonstrates how raw sports data can be transformed into actionable insights using modern data analytics tools.

The dashboard provides a comprehensive view of team performance, player statistics, and tournament trends in the **ICC Men's T20 World Cup 2026**.

---

# Author

**Mayank Bisht**

Data Analyst(Fresher) passionate about sports analytics, data visualization, and SQL-driven insights.
