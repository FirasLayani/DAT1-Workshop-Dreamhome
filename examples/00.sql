.open dreamhome.sqlite
.mode column

-- 6.01 SELECT all columns
SELECT * FROM staff;

-- 6.02 SELECT specific columns
SELECT fname, lname, salary
FROM staff;

-- 6.07 SELECT using a range condition
SELECT fname, lname, salary
FROM staff
WHERE salary BETWEEN 20000 AND 30000;

-- 6.08 SELECT using IN() set
SELECT fname, lname, position
FROM staff
WHERE position IN('Manager', 'Supervisor');

-- 6.09 SELECT using regex
SELECT fname, lname, address
FROM privateowner
WHERE address LIKE '%Glasgow';

-- 6.10 SELECT using two conditions
SELECT *
FROM viewing
WHERE propertyno LIKE 'PR4%' AND comment IS NULL;

-- 6.11 ORDER BY descending order
SELECT position, salary
FROM staff
ORDER BY salary DESC;

-- 6.12 ORDER BY string type
SELECT city, type, rooms, rent
FROM propertyforrent
ORDER BY type;