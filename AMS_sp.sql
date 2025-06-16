 -- Stored Procedures

-- Add Flight
CREATE PROCEDURE AddFlight
    @DepAirportId INT,
    @DepDate DATE,
    @DepTime TIME,
    @ArrAirportId INT,
    @ArrDate DATE,
    @ArrTime TIME
AS
BEGIN
    INSERT INTO Flights (DepAirportId, DepDate, DepTime, ArrAirportId, ArrDate, ArrTime)
    VALUES (@DepAirportId, @DepDate, @DepTime, @ArrAirportId, @ArrDate, @ArrTime);
END;

-- Get All Flights
CREATE PROCEDURE GetAllFlights
AS
BEGIN
    SELECT * FROM Flights;
END;

-- Get Flight By ID
CREATE PROCEDURE GetFlightById
    @FlightId INT
AS
BEGIN
    SELECT * FROM Flights WHERE FlightId = @FlightId;
END;

-- Update Flight
CREATE PROCEDURE UpdateFlight
    @FlightId INT,
    @DepAirportId INT,
    @DepDate DATE,
    @DepTime TIME,
    @ArrAirportId INT,
    @ArrDate DATE,
    @ArrTime TIME
AS
BEGIN
    UPDATE Flights
    SET DepAirportId = @DepAirportId,
        DepDate = @DepDate,
        DepTime = @DepTime,
        ArrAirportId = @ArrAirportId,
        ArrDate = @ArrDate,
        ArrTime = @ArrTime
    WHERE FlightId = @FlightId;
END;

-- Delete Flight
CREATE PROCEDURE DeleteFlight
    @FlightId INT
AS
BEGIN
    DELETE FROM Flights WHERE FlightId = @FlightId;
END;

-- Admin Login
CREATE PROCEDURE AdminLogin
    @Username NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SELECT COUNT(*) AS IsValid
    FROM Admin
    WHERE Username = @Username AND Password = @Password;
END;

-- Add Country
CREATE PROCEDURE AddCountry
    @CountryName NVARCHAR(100)
AS
BEGIN
    INSERT INTO Country (CountryName) VALUES (@CountryName);
END;

-- Add City
CREATE PROCEDURE AddCity
    @CityName NVARCHAR(100),
    @CountryId INT
AS
BEGIN
    INSERT INTO City (CityName, CountryId) VALUES (@CityName, @CountryId);
END;

-- Add Airport
CREATE PROCEDURE AddAirport
    @AirportName NVARCHAR(150),
    @CityId INT,
    @AirportCode NVARCHAR(10)
AS
BEGIN
    INSERT INTO Airport (AirportName, CityId, AirportCode) 
    VALUES (@AirportName, @CityId, @AirportCode);
END;

-- Get All Airports with City and Country
CREATE PROCEDURE GetAllAirportsDetailed
AS
BEGIN
    SELECT a.AirportId, a.AirportName, a.AirportCode, 
           c.CityName, co.CountryName
    FROM Airport a
    JOIN City c ON a.CityId = c.CityId
    JOIN Country co ON c.CountryId = co.CountryId;
END;
