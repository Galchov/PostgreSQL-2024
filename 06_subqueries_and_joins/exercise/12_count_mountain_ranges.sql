SELECT
    country_code,
    COUNT(m.mountain_range) AS mountain_range_count
FROM
    mountains AS m
JOIN
    mountains_countries AS mc
ON
    m.id = mc.mountain_id
WHERE
    country_code IN ('US', 'RU', 'BG')
GROUP BY
    country_code
ORDER BY
    mountain_range_count DESC;
