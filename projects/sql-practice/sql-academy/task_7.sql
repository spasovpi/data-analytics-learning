-- Задача: Вывести все названия самолётов, на которых можно улететь в Москву (Moscow)

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/7

-- Сложность: ★☆☆

SELECT DISTINCT plane
FROM Trip
WHERE town_to = 'Moscow'