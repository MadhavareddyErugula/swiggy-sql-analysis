CREATE DATABASE Swiggy;

USE swiggy;


SELECT * FROM restaurants ;

SELECT name, city 
FROM restaurants ;

SELECT * FROM restaurants
WHERE city = "Banglore" ;

SELECT * FROM restaurants
WHERE cost <= 300 ;

SELECT DISTINCT cuisine FROM restaurants ;

SELECT * FROM restaurants
ORDER BY rating DESC
LIMIT 5;

-- List restaurants with a rating count greater than 1000.
SELECT * FROM restaurants
WHERE rating_count > 1000 ;


SELECT * FROM restaurants
WHERE cuisine = "Biryani";


-- count the total number of restaurants in the dataset--

SELECT COUNT(name) FROM restaurants ;

-- Find the average cost of all restaurants.

SELECT avg(cost) FROM restaurants ;

-- 12. Display restaurant names and costs ordered by cost in ascending order.

SELECT name, cost  FROM restaurants
ORDER BY cost ASC ;

-- 15. Find the maximum and minimum cost of restaurants for each cuisine.
SELECT MAX(cost),
		MIN(cost), cuisine
        FROM restaurants
GROUP BY cuisine
; 

SELECT city, COUNT(*) AS num_of_res
FROM restaurants
GROUP BY city
ORDER BY COUNT(*) DESC
LIMIT 1 OFFSET 1;

use swiggy ;

SELECT name, COUNT(*) AS restaurant_count

FROM restaurants 

GROUP BY name

ORDER BY COUNT(*) DESC
LIMIT 3;

 -- Dense_Rank every restaurant from most expensive to least expensive.
 
 SELECT *, DENSE_RANK()
 OVER(ORDER BY cost DESC) AS ranking
 FROM restaurants;

 SELECT *, RANK()
 OVER(ORDER BY cost DESC) AS ranking
 FROM restaurants;
 
  SELECT *, ROW_NUMBER()
 OVER(ORDER BY cost DESC) AS ranking
 FROM restaurants;
 
  -- row_number every restaurant from most expensive to least expensive as per city.
SELECT NAME, CITY, COST, ROW_NUMBER()
OVER(PARTITION BY CITY ORDER BY COST DESC) AS row_number_city
FROM restaurants;

SELECT name, cost, cuisine, RANK()
OVER(PARTITION BY cuisine ORDER BY cost DESC) AS rank_cuisine
FROM restaurants ;

SELECT name, cost, cuisine, DENSE_RANK()
OVER(PARTITION BY cuisine ORDER BY cost DESC) AS dense_rank_cuisine
FROM restaurants ;

SELECT name, cost, cuisine, ROW_NUMBER()
OVER(PARTITION BY cuisine ORDER BY cost DESC) AS row_number_cuisine
FROM restaurants ;
