CREATE OR REPLACE VIEW
    view_continents_countries_currencies_details
AS
SELECT
    CONCAT(
            TRIM(con.continent_name), ': ', con.continent_code
    ) AS continent_details,
    CONCAT(
            cnt.country_name, ' - ', cnt.capital, ' - ', cnt.area_in_sq_km, ' - km2'
    ) AS country_information,
    CONCAT(
            cur.description, ' (', cur.currency_code, ')'
    ) AS currencies
FROM continents AS con,
     countries AS cnt,
     currencies AS cur
WHERE
    con.continent_code = cnt.continent_code
  AND
    cnt.currency_code = cur.currency_code
ORDER BY
    country_information,
    currencies;
