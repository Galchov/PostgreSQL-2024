SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    p.project_id,
    p.name
FROM
    employees_projects AS ep
JOIN
    employees AS e
ON
    ep.employee_id = e.employee_id
JOIN
    projects AS p
ON
    ep.project_id = p.project_id
WHERE
    ep.project_id = 1;
