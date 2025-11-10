-- Задача: Вывести все рейсы, совершенные из Москвы

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/3

-- Сложность: ★☆☆

SELECT *
FROM trip
WHERE town_from = 'Moscow'