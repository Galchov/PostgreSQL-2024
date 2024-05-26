SELECT
    user_id,
    AGE(starts_at, booked_at) AS ealry_birds
FROM
    bookings
WHERE
    starts_at - booked_at >= '10 MONTHS';
