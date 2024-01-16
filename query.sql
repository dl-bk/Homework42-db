--1 2
SELECT product_type, COUNT(*)
FROM Single
GROUP BY product_type


--3
SELECT COUNT (*)
FROM Single
WHERE product_color = 'Green'

--4
SELECT product_color, COUNT(*)
FROM Single
GROUP BY product_color

--5
WITH da AS (
	SELECT product_color, product_type, COUNT(*) AS net
	FROM Single
	GROUP BY product_color, product_type)
SELECT product_color, product_type, net FROM da
WHERE net = (SELECT MIN(net) FROM da);

--6
WITH da AS (
	SELECT product_color, product_type, COUNT(*) AS net
	FROM Single
	GROUP BY product_color, product_type)
SELECT product_color, product_type, net FROM da
WHERE net = (SELECT MAX(net) FROM da);

--7 8 9
SELECT MIN(product_calories), MAX(product_calories), CAST(AVG(product_calories) as INT)
FROM Single

-- 10 11
SELECT MIN(product_calories), MAX(product_calories)
FROM Single
WHERE product_type = 'Fruit'