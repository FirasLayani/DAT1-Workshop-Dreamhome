.open dreamhome.sqlite
.mode column

-- 6.13 Use COUNT
-- How many properties cost more than £350 per month to rent?
SELECT COUNT(*) as myCount
FROM propertyforrent
WHERE rent > 350;

-- 6.14 Use DISTINCT
-- How many different properties were viewed in May 2013?
SELECT COUNT(DISTINCT propertyno) as numUniqueProperties
FROM viewing
WHERE viewDate BETWEEN '1-May-13' AND '31-May-13';

-- 6.15 Use SUM
-- Find the total number of Managers and the sum of their salaries.
SELECT COUNT(staffNo) as numManagers, SUM(salary) as salariesTotal
FROM staff
WHERE position = 'Manager';

-- 6.16 Use aggregate functions
-- Find the minimum, maximum, and average staff salary.
SELECT MIN(salary), MAX(salary), AVG(salary)
FROM staff;

-- 6.17 Use GROUPBY
-- Find the number of staff working in each branch and the sum of their salaries.
SELECT branchNo, COUNT(DISTINCT staffNo) AS numStaff, SUM(salary) AS salariesTotal
FROM staff
GROUP BY branchNo
ORDER BY branchNo;

-- 6.18 Use HAVING
-- For each branch office with more than 5 members of staff, find the number of staff working in each branch and the sum of their salaries.
SELECT branchNo, COUNT(staffNo) AS numStaff, SUM(salary) AS salariesTotal
FROM staff
GROUP BY branchNo
HAVING COUNT(staffNo) >= 5
ORDER BY branchNo;

-- 6.19 Subqueries, SELECT based on data from two tables
-- List the staff who work in the branch at '163 Main St'.
SELECT staffno, fname, lname, position, branchNo
FROM staff
WHERE branchNo = (SELECT branchNo
                  FROM branch
                  WHERE street = '163 Main St');

-- 6.20 Use subqueries in WHERE statements
-- List all staff whose salary is greater than the average salary, and show by how much their salary is greater than the average.
SELECT staffno, fname, lname, position, salary, (SELECT AVG(salary) FROM Staff) as avg_salary, salary - (SELECT AVG(salary) FROM Staff) as sal_diff
FROM staff
WHERE salary > (SELECT AVG(salary) FROM Staff)
ORDER BY salary DESC;

-- 6.21
-- List the properties that are handled by staff who work in the branch at '163 Main St'.