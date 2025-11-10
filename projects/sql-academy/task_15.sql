-- Задача: Выведите идентификатор пассажира Стив Мартин (Steve Martin) и дату и время его прилёта в Лондон (London)

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/15

-- Сложность: ★☆☆

SELECT Pass_in_trip.passenger AS id,
	Trip.time_in
FROM Trip
	LEFT JOIN Pass_in_trip ON Trip.id = Pass_in_trip.trip
	LEFT JOIN Passenger ON Pass_in_trip.passenger = Passenger.id
WHERE name = 'Steve Martin'
	AND town_to = 'London'