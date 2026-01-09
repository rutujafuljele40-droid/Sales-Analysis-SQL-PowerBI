-- Check duplicates
SELECT order_id, COUNT(*)
FROM sales
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Remove duplicates using id
SET SQL_SAFE_UPDATES = 1;
DELETE s1
FROM sales s1
JOIN sales s2
ON s1.order_id = s2.order_id
AND s1.id > s2.id;
