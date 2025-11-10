-- Задача: Выведите пассажиров с самым длинным ФИО. Пробелы, дефисы и точки считаются частью имени.

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/11

-- Сложность: ★☆☆

SELECT name
FROM Passenger
WHERE LENGTH(name) = (
		SELECT MAX(LENGTH(name))
		FROM Passenger
	)