# Swiggy Restaurant Data Analysis Using SQL

An exploratory project using MySQL to examine restaurant pricing, ratings, cuisines, and restaurant distribution across cities.

## Project Files
- restaurants.csv — restaurant dataset
- swiggy_analysis.sql — exploration and analysis queries

## Analysis Covered
- Filter restaurants by city, cuisine, cost, and rating count.
- Find the five highest-rated restaurant records.
- Calculate average cost and minimum/maximum cost by cuisine.
- Count restaurant records by city and restaurant name.
- Rank restaurants by cost overall and within cities or cuisines.

## SQL Skills
SELECT, WHERE, DISTINCT, ORDER BY, LIMIT, GROUP BY,
COUNT, AVG, MIN, MAX, RANK, DENSE_RANK, ROW_NUMBER,
and PARTITION BY.

## How to Run
1. Use MySQL 8.0 or later.
2. Create a database named swiggy.
3. Import restaurants.csv as a table named restaurants.
4. Ensure cost, rating, and rating_count use numeric data types.
5. Open swiggy_analysis.sql and run the analysis queries individually.

Note: The script uses both Swiggy and swiggy as database names.
Make their capitalization consistent, and skip CREATE DATABASE
if the database already exists. Check whether the city value
"Banglore" matches the spelling in the dataset.

## Project Status
This project is being developed as I continue learning SQL.
Query results, further analysis, and business recommendations
will be added in future updates.

## Author
Madhavareddy Erugula
