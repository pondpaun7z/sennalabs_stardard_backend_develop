SELECT
    p.name,
    count(c.id) as count_car
FROM
    persons p
    JOIN users_cars uc ON p.id = uc.user_id
    JOIN cars c ON uc.car_id = c.id
GROUP BY p.id
HAVING count_car > 2;
