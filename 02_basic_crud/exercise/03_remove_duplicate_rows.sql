SELECT
    DISTINCT name,      -- Removes the duplicate values of the specified column
    area AS area_km2
FROM cities
ORDER BY name DESC;
