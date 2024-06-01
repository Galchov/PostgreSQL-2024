CREATE TABLE employees_projects (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    employee_id INT,
    project_id INT,

    CONSTRAINT fk_employees_project_employees
    FOREIGN KEY (employee_id)
    REFERENCES employees(id),

    CONSTRAINT fk_employees_projects_projects
    FOREIGN KEY (project_id)
    REFERENCES projects(id)
);
