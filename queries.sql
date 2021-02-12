SELECT year, avg_temp,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_year_avg_3,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS moving_year_avg_4,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS moving_year_avg_5,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 5 PRECEDING AND CURRENT ROW) AS moving_year_avg_6,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_year_avg_7,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 7 PRECEDING AND CURRENT ROW) AS moving_year_avg_8,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 8 PRECEDING AND CURRENT ROW) AS moving_year_avg_9,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 9 PRECEDING AND CURRENT ROW) AS moving_year_avg_10
FROM global_data
GROUP BY year, avg_temp;

SELECT year, avg_temp,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_year_avg_3,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS moving_year_avg_4,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS moving_year_avg_5,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 5 PRECEDING AND CURRENT ROW) AS moving_year_avg_6,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_year_avg_7,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 7 PRECEDING AND CURRENT ROW) AS moving_year_avg_8,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 8 PRECEDING AND CURRENT ROW) AS moving_year_avg_9,
AVG(avg_temp) OVER (ORDER BY year ROWS BETWEEN 9 PRECEDING AND CURRENT ROW) AS moving_year_avg_10
FROM city_data
WHERE city IN ('Berlin')
GROUP BY year, avg_temp;
