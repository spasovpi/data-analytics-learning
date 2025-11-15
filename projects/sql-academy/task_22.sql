
-- Задача: Найти имена всех матерей (mother)

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/21

-- Сложность: ★☆☆


SELECT member_name
FROM FamilyMembers
WHERE status = 'mother'