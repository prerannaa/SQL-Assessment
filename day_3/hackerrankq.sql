/*
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows
*/

SELECT NAME
FROM CITY
WHERE
    COUNTRYCODE="JPN";

/*
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:
*/

SELECT DISTINCT CITY FROM STATION WHERE MOD(ID, 2) = 0;

/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their 
respective lengths (i.e.: number of characters in the name). If there is more than one smallest 
or largest city, choose the one that comes first when ordered alphabetically.
*/

WITH CityLengths AS (
  SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
  FROM STATION
)
SELECT CITY, CITY_LENGTH
FROM CityLengths
WHERE CITY_LENGTH = (SELECT MIN(CITY_LENGTH) FROM CityLengths)
   OR CITY_LENGTH = (SELECT MAX(CITY_LENGTH) FROM CityLengths ORDER BY CITY LIMIT 1)
ORDER BY CITY_LENGTH, CITY
LIMIT 2;

/* 
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES
table, but did not realize her keyboard's  key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeros 
removed), and the actual average salary.Write a query calculating the amount of error 
(i.e.:  average monthly salaries), and round it up to the next integer.
*/

SELECT ROUND(AVG(Salary)) - ROUND(AVG(REPLACE(Salary,0,""))) FROM EMPLOYEES

