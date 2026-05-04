-- types of operators
SELECT * FROM employee2;

-- arithematic operators
SELECT
	FIRST_NAME,
	SALARY,
	(SALARY * 0.10) AS BONUS
FROM
	EMPLOYEE2;

SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY,
	(SALARY * 12) AS ANNUAL_SALARY,
	(SALARY * 0.05) AS INCREMENT_SALARY,
	(salary + salary*0.05) AS new_salary,
	(salary * 1.05) AS new_salary2
FROM
	EMPLOYEE2;

-- comparison operators

SELECT * FROM employee2
WHERE age=30;

SELECT first_name, age 
FROM employee2
WHERE age!=30;

-- logical operators

SELECT first_name, salary, age 
FROM employee2
WHERE salary>50000 AND age>40;

SELECT first_name, salary, age 
FROM employee2
WHERE salary>=90000 OR age>=60;

SELECT * FROM employee2
WHERE NOT department='IT';

-- Between, Like and In operators

-- 1) Retrieve employees whose salary is between 40,000 and 60,000. - Use BETWEEN Operators
SELECT first_name, salary 
FROM employee2
WHERE salary BETWEEN 40000 AND 60000;

-- 2) Find employees whose email addresses end with gmail.com - Use LIKE Operators
SELECT first_name, email 
FROM employee2
WHERE email LIKE '%@gmail.com';

SELECT first_name 
FROM employee2
WHERE first_name LIKE '%a';

-- 3) Retrieve employees who belong to either the 'Finance' or 'Marketing' departments-- Use IN Operator
SELECT first_name, department
FROM employee2
WHERE department IN ('Finance', 'Marketing');

-- IS NULL, ORDER BY, LIMIT Operator & DISTINCT operators

-- Find employees where the email column is NULL ( if applicable).
SELECT first_name, last_name, email
FROM employee2
WHERE email IS NULL;

-- List employees sorted by salary in DESCENDING order.
SELECT first_name, last_name, salary
FROM employee2
ORDER BY salary DESC;

-- Retrieve the top 5 highest-paid employees.
SELECT first_name, last_name, salary
FROM employee2
ORDER BY salary DESC
LIMIT 5;

-- Retrieve a list of unique departments
SELECT DISTINCT department
FROM employee2;

SELECT COUNT (DISTINCT department) AS dep_unique_count
FROM employee2;













