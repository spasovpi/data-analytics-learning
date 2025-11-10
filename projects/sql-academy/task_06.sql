-- Задача: Какие компании совершали перелеты на Boeing

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/6

-- Сложность: ★☆☆

SELECT DISTINCT name
FROM Company  
    JOIN Trip on Company.id = Trip.company
WHERE plane = 'Boeing'