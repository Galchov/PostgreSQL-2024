SELECT
    id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    job_title
FROM employees
ORDER BY first_name
LIMIT 50;       -- Limits the return to the first n rows
