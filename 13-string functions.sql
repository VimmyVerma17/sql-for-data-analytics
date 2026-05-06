-- string functions - UPPER(), LOWER(), LENGTH(), CONCAT(), SUBSTRING(), TRIM(), REPLACE()

SELECT * FROM products;

-- get all categories in upper case
SELECT UPPER(category) AS categoryy
FROM products;

-- get all categories in lower case
SELECT LOWER(category) AS categoryy
FROM products;

-- join product_name and price with hypen
SELECT CONCAT(product_name, '-', price) AS product_details
FROM products;

-- extract first 5 characters of product name
SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM products;

SELECT SUBSTRING(product_name, 2,5) AS short_name
FROM products;

-- count length
SELECT product_name, LENGTH(product_name) AS total_characters
FROM products;

-- remove leading and trailing spaces from string
SELECT TRIM('   monitor  ') AS trim_text

SELECT LENGTH(TRIM('   monitor  ')) AS trim_text;

SELECT LENGTH('   monitor  ') AS trim_text;

-- replace "phone" with "device"
SELECT REPLACE(product_name, 'phone', 'device') AS updated_products
FROM products;

-- get 1st left 3 characters
SELECT LEFT(product_name, 3) AS short
FROM products;

-- get 1st right 3 characters
SELECT RIGHT(product_name, 3) AS short
FROM products;
