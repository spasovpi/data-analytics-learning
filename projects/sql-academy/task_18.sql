
-- Задача: Выведите имя самого старшего человека. Если таких несколько, то выведите их всех.

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/18

-- Сложность: ★☆☆


SELECT member_name
FROM FamilyMembers
WHERE birthday = (
		SELECT MIN(birthday)
		FROM FamilyMembers
	)