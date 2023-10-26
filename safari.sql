DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS enclosures;

CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closed_for_maintenance BOOLEAN
);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employee_number INT
);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES staff(id),
    enclosure_id INT REFERENCES enclosures(id),
    day VARCHAR(255)
);

INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Big cat field', 20, 'false');
INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Tortoise garden', 10, 'true');
INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Shark territory', 4, 'false');
INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Aqauatic centre', 25, 'true');

INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Tony','Tiger', 59, 1);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Tom','Tortoise', 110, 2);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Katie','Lion', 29, 1);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Jerome','Tiger shark', 36, 3);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Sammy','Seal', 10, 4);

INSERT INTO staff(name, employee_number) VALUES ('Sarah',5456);
INSERT INTO staff(name, employee_number) VALUES ('Faiz',5826);
INSERT INTO staff(name, employee_number) VALUES ('Claudia',1556);
INSERT INTO staff(name, employee_number) VALUES ('Zoe',8956);


INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (1,2, 'Monday');
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (2,3, 'Tuesday');
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (3,4, 'Tuesday');
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (4,1, 'Saturday');
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (2,4, 'Wednesday');
