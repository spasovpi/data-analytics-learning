
-- Задача: Сколько и кто из семьи потратил на развлечения (entertainment). Вывести статус в семье, имя, сумму

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/20

-- Сложность: ★★☆


SELECT member_name,
	STATUS,
	SUM(unit_price * amount) AS costs
FROM FamilyMembers f
	JOIN Payments p ON f.member_id = p.family_member
	JOIN Goods g ON p.good = g.good_id
	JOIN GoodTypes Gt ON g.type = gt.good_type_id
WHERE good_type_name = 'entertainment'
GROUP BY member_name,
	STATUS
ORDER BY costs DESC