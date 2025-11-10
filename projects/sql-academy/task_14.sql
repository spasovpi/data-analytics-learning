-- Задача: В какие города летал Bruce Willis Поля в результирующей таблице: town_to

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/14

-- Сложность: ★☆☆

SELECT town_to
FROM Trip
	JOIN Pass_in_trip ON Trip.id = Pass_in_trip.trip
	JOIN Passenger ON Pass_in_trip.passenger = Passenger.id
WHERE name = 'Bruce Willis'