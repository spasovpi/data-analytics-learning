
-- Задача: Определить товары, которые покупали более 1 раза

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/21

-- Сложность: ★★☆


SELECT good_name
FROM Payments
	JOIN Goods ON Payments.good = Goods.good_id
GROUP BY good_name
HAVING COUNT(good) > 1