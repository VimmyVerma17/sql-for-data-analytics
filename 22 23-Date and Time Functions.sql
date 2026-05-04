--Date & Time Functions

SELECT * FROM products;

-- 1. NOW() – Get Current Date and Time
SELECT
	NOW() AS CURRENT_DATE_TIME;

-- 2. CURRENT_DATE() – Get Current Date
SELECT
	CURRENT_DATE AS TODAY_DATE;

SELECT
	ADDED_DATE,
	CURRENT_DATE,
	(CURRENT_DATE - ADDED_DATE) AS DAYS_DIFFERENCE
FROM
	PRODUCTS;

-- 3. EXTRACT() – Extract Parts of a Date
-- Extract the year, month, and day from the added_date column.
SELECT product_name, 
	EXTRACT(YEAR FROM added_date) AS year_added,
	EXTRACT(MONTH FROM added_date) AS year_month,
	EXTRACT(DAY FROM added_date) AS year_day
FROM products;

-- 4. AGE() – Calculate Age Between Dates
-- Calculate the time difference between added_date and today’s date.
SELECT
	PRODUCT_NAME,
	AGE (CURRENT_DATE, ADDED_DATE) AS AGE_SINCE_ADDED
FROM
	PRODUCTS;

-- 5. TO_CHAR() – Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YYYY).
SELECT
	PRODUCT_NAME,
	TO_CHAR(ADDED_DATE, 'DD_Mon-YYYY') AS DATE_FORMAT
FROM
	PRODUCTS;

-- 6. DATE_PART() – Get Specific Date Part
-- Extract the day of the week from added_date.
SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	DATE_PART('dow', ADDED_DATE) AS DAY_OF_WEEK,
	DATE_PART('month', ADDED_DATE) AS month_added,
	DATE_PART('year', ADDED_DATE) AS year_added
FROM
	PRODUCTS;

-- 7. DATE_TRUNC() – Truncate Date to Precision
-- Truncate added_date to the start of the month.
SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	DATE_TRUNC('month', ADDED_DATE) AS MONTH_START
FROM
	PRODUCTS;

-- 8. INTERVAL – Add or Subtract Time Intervals
-- Add 6 months to the added_date.
SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	added_date + INTERVAL '6 days' AS new_date
FROM
	PRODUCTS;
	
-- 9. CURRENT_TIME() – Get Current Time
--Retrieve only the current time.
SELECT
	CURRENT_TIME AS current_timee;
	
-- 10. TO_DATE() – Convert String to Date
-- Convert a string to a date format.
SELECT
	TO_DATE('20-04-2026', 'DD-MM-YYYY') AS CONVERTED_DATE;