
-- Задача: Найдите самый дорогой деликатес (delicacies) и выведите его цену

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/23

-- Сложность: ★★☆


SELECT good_name,
	unit_price
FROM Goods
	JOIN Payments ON Goods.good_id = Payments.good
	JOIN GoodTypes ON Goods.type = GoodTypes.good_type_id
WHERE good_type_name = 'delicacies'
	AND unit_price = (
		SELECT MAX(unit_price)
		FROM Payments
			JOIN Goods ON Payments.good = Goods.good_id
			JOIN GoodTypes ON Goods.type = GoodTypes.good_type_id
		WHERE good_type_name = 'delicacies'
	)