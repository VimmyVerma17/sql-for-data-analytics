DROP TABLE IF EXISTS employee2;

CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	department VARCHAR(20),
	salary NUMERIC(10,2),
	joining_date DATE,
	age INT
);

SELECT * FROM employee2;

-- importing CSV file 
COPY employee2 (employee_id, first_name, last_name, email, department, salary, joining_date, age)
FROM 'D:\Data Analyst\ST - SQL ALL PRACTICE FILES SD61\ST - SQL ALL PRACTICE FILES-2\ALL Excel Practice Files\employee_data.csv'
DELIMITER ','
CSV HEADER;

-- importing CSV file directly
-- right click on table in left panel -> click import/export data -> select filename -> enable header in options


