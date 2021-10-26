CREATE DATABASE Bank;

USE Bank;

CREATE TABLE customers(
	id INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(50) NOT NULL
	);

INSERT INTO customers (name)
VALUES ('kevinz'),
	  ('nikitaz'),
	  ('naimz');

BEGIN TRANSACTION;
UPDATE customers
SET name = SUBSTRING(name, 1, LEN(name)-1);
COMMIT;

SELECT * FROM customers;
