CREATE TABLE manufacturers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE models (
	id INT GENERATED ALWAYS AS IDENTITY (START WITH 1000 INCREMENT 1) PRIMARY KEY,
	model_name VARCHAR(50),
	manufacturer_id INT,
	
	CONSTRAINT fk_models_manufacturers
	FOREIGN KEY (manufacturer_id)
	REFERENCES manufacturers(id)
);

CREATE TABLE production_years (
	id SERIAL PRIMARY KEY,
	established_on DATE,
	manufacturer_id INT,
	
	CONSTRAINT fk_production_years_manufacturers
	FOREIGN KEY (manufacturer_id)
	REFERENCES manufacturers(id)
);

INSERT INTO
	manufacturers(name)
VALUES 
	('BMW'),
	('Tesla'),
	('Lada');
	
INSERT INTO 
	models(model_name, manufacturer_id)
VALUES
	('X1', 1),
	('i6', 1),
	('Model S', 2),
	('Model X', 2),
	('Model 3', 2),
	('Nova', 3);
	
INSERT INTO 	
	production_years(established_on, manufacturer_id)
VALUES
	('1916-03-01', 1),
	('2003-01-01', 2),
	('1966-05-01', 3);

/*

CREATE DATABASE car_manufacture_db;

CREATE TABLE manufacturers (
    name VARCHAR(50)
);

CREATE TABLE models (
    model_name VARCHAR(50),
    manufacturer_id INT
);

CREATE TABLE production_years (
    established_on DATE,
    manufacturer_id INT
);

ALTER TABLE
    manufacturers
ADD COLUMN
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;

ALTER TABLE
    models
ADD COLUMN
    id INT GENERATED ALWAYS AS IDENTITY (START WITH 1000 INCREMENT 1) PRIMARY KEY;

ALTER TABLE
    production_years
ADD COLUMN
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;

ALTER TABLE
    models
ADD
    CONSTRAINT fk_models_manufacturers
    FOREIGN KEY (manufacturer_id)
    REFERENCES manufacturers(id);

ALTER TABLE
    production_years
ADD
    CONSTRAINT fk_production_years_manufacturers
    FOREIGN KEY (manufacturer_id)
    REFERENCES manufacturers(id);

INSERT INTO
    manufacturers (name)
VALUES
    ('BMW'),
    ('Tesla'),
    ('Lada');

INSERT INTO
    models (model_name, manufacturer_id)
VALUES
    ('X1', 1),
    ('i6', 1),
    ('Model S', 2),
    ('Model X', 2),
    ('Model 3', 2),
    ('Nova', 3);

INSERT INTO
    production_years (established_on, manufacturer_id)
VALUES
    ('1916-03-01', 1),
    ('2003-01-01', 2),
    ('1966-05-01', 3);

*/
