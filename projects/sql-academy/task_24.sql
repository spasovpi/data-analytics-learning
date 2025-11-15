
-- Задача: Определить кто и сколько потратил в июне 2005

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/24

-- Сложность: ★★☆


SELECT member_name,
	SUM(unit_price * amount) AS costs
FROM FamilyMembers f
	JOIN Payments p ON f.member_id = p.family_member
	JOIN Goods g ON p.good = g.good_id
WHERE p.date BETWEEN  '2005-06-01' and  '2005-07-01'
GROUP BY member_name,
	STATUS
ORDER BY costs DESC