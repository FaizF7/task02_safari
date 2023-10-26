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

INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Big cat field', 20, 'false');
INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Tortoise garden', 10, 'false');
INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Shark territory', 4, 'false');
INSERT INTO enclosures (name, capacity, closed_for_maintenance) VALUES ('Aqauatic centre', 25, 'false');

INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Tony','Tiger', 59, 1);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Tom','Tortoise', 110, 2);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Katie','Lion', 29, 1);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Jerome','Tiger shark', 36, 3);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Sammy','Seal', 10, 4);