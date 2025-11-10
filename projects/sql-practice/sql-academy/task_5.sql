-- Задача: Вывести количество рейсов, совершенных на TU-134

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/5

-- Сложность: ★☆☆

SELECT count(plane) AS count
from Trip
WHERE plane = 'TU-134'