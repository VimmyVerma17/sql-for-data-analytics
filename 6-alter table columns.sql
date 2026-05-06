DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

INSERT INTO users (username, email, age, city) VALUES
	('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),
	('Priya', 'priya@yahoo.com', 30, 'Delhi'),
	('Ankit', 'ankit@gmail.com', 28, 'Bangalore'),
	('Sneha', 'sneha@hotmail.com', 35, 'Pune'),
	('Vikram', 'vikram@gmail.com', 22, 'Hyderabad');

SELECT * FROM users;

UPDATE users
SET age=26
WHERE username='Rajesh';

SELECT * FROM users ORDER BY user_id ASC;

UPDATE users
SET city='Chennai'
WHERE age>30;

UPDATE users
SET age=31, city='Kolkata'
WHERE username='Priya';

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';

-- renaming column username to name 
ALTER TABLE users
RENAME COLUMN username TO name;

-- changing age columns's data type from INT to SMALLINT
ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

-- adding NOT NULL constraint to city column
ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

-- adding CHECK constaint to age column
ALTER TABLE users
DROP CONSTRAINTS age;

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

-- ALTER table name
ALTER TABLE users
RENAME TO customers;

SELECT * FROM customers ORDER BY user_id ASC;




