/*Задача: 
Выведите идентификаторы всех рейсов и количество пассажиров на них. 
Обратите внимание, что на каких-то рейсах пассажиров может не быть. В этом случае выведите число "0".
*/
-- Ссылка: https://sql-academy.org/ru/trainer/tasks/12

-- Сложность: ★☆☆

SELECT Trip.id,
       COALESCE(COUNT(Pass_in_trip.passenger), 0) AS count
FROM Trip
LEFT JOIN Pass_in_trip ON Trip.id = Pass_in_trip.trip
GROUP BY Trip.id