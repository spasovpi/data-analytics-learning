
-- Задача: Определить, кто из членов семьи покупал картошку (potato)

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/18

-- Сложность: ★☆☆


SELECT STATUS
FROM FamilyMembers
	JOIN Payments ON FamilyMembers.member_id = Payments.family_member
	JOIN Goods ON Payments.good = Goods.good_id
WHERE Goods.good_name = 'potato'
GROUP BY STATUS