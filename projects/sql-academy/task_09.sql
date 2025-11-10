-- Задача: Какие компании организуют перелеты из Владивостока (Vladivostok)?

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/9

-- Сложность: ★☆☆

SELECT Company.name
FROM Trip
    JOIN Company on Trip.company=Company.id
WHERE town_from = 'Vladivostok'