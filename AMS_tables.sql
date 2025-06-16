🗃️ Full Database Schema for Airline Management System

-- 1. Country Table
CREATE TABLE Country (
CountryId INT PRIMARY KEY IDENTITY(1,1),
CountryName NVARCHAR(100) NOT NULL UNIQUE
);

-- 2. City Table
CREATE TABLE City (
CityId INT PRIMARY KEY IDENTITY(1,1),
CityName NVARCHAR(100) NOT NULL,
CountryId INT NOT NULL,
FOREIGN KEY (CountryId) REFERENCES Country(CountryId)
);

-- 3. Airport Table
CREATE TABLE Airport (
AirportId INT PRIMARY KEY IDENTITY(1,1),
AirportName NVARCHAR(150) NOT NULL,
CityId INT NOT NULL,
AirportCode NVARCHAR(10) NOT NULL UNIQUE,
FOREIGN KEY (CityId) REFERENCES City(CityId)
);

-- 4. Flights Table
CREATE TABLE Flights (
FlightId INT PRIMARY KEY IDENTITY(1,1),
DepAirportId INT NOT NULL,
DepDate DATE NOT NULL,
DepTime TIME NOT NULL,
ArrAirportId INT NOT NULL,
ArrDate DATE NOT NULL,
ArrTime TIME NOT NULL,
FOREIGN KEY (DepAirportId) REFERENCES Airport(AirportId),
FOREIGN KEY (ArrAirportId) REFERENCES Airport(AirportId)
);

-- 5. Admin Table
CREATE TABLE Admin (
AdminId INT PRIMARY KEY IDENTITY(1,1),
Username NVARCHAR(50) NOT NULL UNIQUE,
Password NVARCHAR(50) NOT NULL
);    



===============================================

 ALTER TABLE Flights ADD Status NVARCHAR(50);



 -------------------------------------------

 ALTER PROCEDURE AddFlight
    @DepAirportId INT,
    @DepDate DATE,
    @DepTime TIME,
    @ArrAirportId INT,
    @ArrDate DATE,
    @ArrTime TIME,
    @Status NVARCHAR(50)
AS
BEGIN
    INSERT INTO Flights (
        DepAirportId, DepDate, DepTime,
        ArrAirportId, ArrDate, ArrTime,
        Status
    )
    VALUES (
        @DepAirportId, @DepDate, @DepTime,
        @ArrAirportId, @ArrDate, @ArrTime,
        @Status
    );
END;


---------------------------------

ALTER PROCEDURE GetAllFlights
AS
BEGIN
    SELECT
        FlightId, DepAirportId, DepDate, DepTime,
        ArrAirportId, ArrDate, ArrTime, Status
    FROM Flights;
END;

-----------------------------------------

ALTER PROCEDURE UpdateFlight
    @FlightId INT,
    @DepAirportId INT,
    @DepDate DATE,
    @DepTime TIME,
    @ArrAirportId INT,
    @ArrDate DATE,
    @ArrTime TIME,
    @Status NVARCHAR(50)
AS
BEGIN
    UPDATE Flights
    SET
        DepAirportId = @DepAirportId,
        DepDate = @DepDate,
        DepTime = @DepTime,
        ArrAirportId = @ArrAirportId,
        ArrDate = @ArrDate,
        ArrTime = @ArrTime,
        Status = @Status
    WHERE FlightId = @FlightId;
END;
