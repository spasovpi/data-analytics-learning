-- Задача: Определить, сколько потратил в 2005 году каждый из членов семьи. В результирующей выборке не выводите тех членов семьи, которые ничего не потратили.

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/17

-- Сложность: ★★☆

SELECT member_name,
	status,
	SUM(amount*unit_price) AS costs
FROM FamilyMembers
JOIN Payments on FamilyMembers.member_id=Payments.family_member
WHERE YEAR(date) = 2005
GROUP by member_name, status