-- Задача: Вывести имена людей, у которых есть полный тёзка среди пассажиров

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/13

-- Сложность: ★★☆

SELECT name
FROM Passenger
GROUP by name
HAVING COUNT(name) > 1