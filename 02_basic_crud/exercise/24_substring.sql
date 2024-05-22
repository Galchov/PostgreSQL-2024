CREATE OR REPLACE VIEW view_initials
AS
    SELECT
        SUBSTRING(first_name, 1, 2) AS initial,     -- SUBSTRING(string, starting_position, length)
        last_name
    FROM
        employees
ORDER BY
    last_name;
