--1
SELECT * FROM Single
WHERE product_calories < 100  AND product_type = 'Fruit'

--2
SELECT * FROM Single
WHERE product_calories BETWEEN 20 AND 100 AND product_type = 'Vegetable'

--3 
SELECT * FROM Single
WHERE product_type = 'Vegetable' AND product_name LIKE 'Car%'

--4
SELECT * FROM Single
WHERE product_description LIKE '%green%'

--5
SELECT * FROM Single
WHERE product_color IN ('Red', 'Yellow')
