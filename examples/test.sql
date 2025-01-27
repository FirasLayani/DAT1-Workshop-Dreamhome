.open dreamhome.sqlite
.mode column

-- 6.19 Subqueries, SELECT based on data from two tables
SELECT branchNo
FROM branch
WHERE street = '163 Main St';