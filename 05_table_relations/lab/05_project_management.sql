CREATE TABLE clients (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(10)
);

CREATE TABLE employees (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL ,
    last_name VARCHAR(30) NOT NULL
);

CREATE TABLE projects (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    client_id INT,
    project_lead_id INT,

    CONSTRAINT fk_projects_clients
    FOREIGN KEY (client_id)
    REFERENCES clients(id)
    ON DELETE CASCADE,

    CONSTRAINT fk_projects_employees
    FOREIGN KEY (project_lead_id)
    REFERENCES employees(id)
    ON DELETE CASCADE
);

ALTER TABLE
    employees
ADD COLUMN
    project_id INT;

ALTER TABLE
    employees
ADD CONSTRAINT
    fk_employees_projects
FOREIGN KEY
    (project_id)
REFERENCES
    projects(id)
ON DELETE CASCADE;
