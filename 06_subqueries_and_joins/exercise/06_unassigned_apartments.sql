SELECT
    b.booking_id,
    b.apartment_id,
    c.companion_full_name
FROM
    bookings AS b
LEFT JOIN
    customers AS c
USING
    (customer_id)
-- ON
--     b.customer_id = c.customer_id
WHERE
    b.apartment_id IS NULL;
