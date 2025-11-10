-- Задача: В какие города можно улететь из Парижа (Paris) и сколько времени это займёт?

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/8

-- Сложность: ★★☆

SELECT town_to,
    CAST(time_in - time_out AS TIME) AS flight_time
FROM Trip
WHERE town_from = 'Paris'