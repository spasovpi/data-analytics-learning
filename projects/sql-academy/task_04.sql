-- Задача: Вывести имена людей, которые заканчиваются на "man"

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/4

-- Сложность: ★☆☆

SELECT name
FROM passenger
WHERE name LIKE '%man'