-- Задача: Вывести отсортированный по количеству перелетов (по убыванию) и имени (по возрастанию) список пассажиров, совершивших хотя бы 1 полет.

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/16

-- Сложность: ★★☆

SELECT name,
	count(passenger) as count
FROM Passenger
	left join Pass_in_trip on Passenger.id = Pass_in_trip.passenger
GROUP by name
HAVING count >= 1
ORDER BY count desc,
	name