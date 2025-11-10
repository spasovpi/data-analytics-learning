-- Задача: Вывести вылеты, совершенные с 10 ч. по 14 ч. 1 января 1900 г.

-- Ссылка: https://sql-academy.org/ru/trainer/tasks/10

-- Сложность: ★★☆

SELECT *
FROM Trip
WHERE 
    time_out >= '1900.01.01 10:00'
    AND
    time_out <= '1900.01.01 14:00'


SELECT *
FROM Trip
WHERE time_out BETWEEN '1900.01.01 10:00' and '1900.01.01 14:00'