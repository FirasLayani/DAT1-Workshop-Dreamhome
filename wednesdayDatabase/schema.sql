.open wednesdayDatabase/dreamhome.sqlite
.mode column

DROP TABLE IF EXISTS Vehicles;
DROP TABLE IF EXISTS Drivers;

CREATE TABLE Vehicles (
    vehicleID INTEGER PRIMARY KEY,
    odoReading INTEGER,
    name TEXT
);

CREATE TABLE Drivers (
    driverID INTEGER PRIMARY KEY,
    age INTEGER,
    Car INTEGER,
    FOREIGN KEY (Car) REFERENCES Vehicles(vehicleID)
);

INSERT INTO Vehicles (vehicleID, odoReading, name) VALUES
(1, 15000, 'Ford Focus'),
(2, 85000, 'Honda Civic'),
(3, 250000, 'Toyota Camry'),
(4, 5500, 'Tesla Model 3'),
(5, 120000, 'Chevrolet Silverado'),
(6, 35000, 'BMW X5');

INSERT INTO Drivers (driverID, age, Car) VALUES
(1, 35, 3),
(2, 28, 1),
(3, 52, 5),
(4, 22, 4),
(5, 99, 9);

SELECT *
FROM Vehicles;

SELECT *
FROM Drivers;

SELECT *
FROM Vehicles vh
INNER JOIN Drivers AS dr
ON vh.vehicleID = dr.Car;

SELECT *
FROM Vehicles vh
LEFT OUTER JOIN Drivers AS dr
ON vh.vehicleID = dr.Car;

SELECT *
FROM Vehicles vh
LEFT JOIN Drivers AS dr
ON vh.vehicleID = dr.Car;