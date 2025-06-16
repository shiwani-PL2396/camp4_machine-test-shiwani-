-- =======================================
-- Airline Management InsertED Data (3 rows per table)
-- =======================================

-- Admin Table
INSERT INTO Admin (Username, Password) VALUES
('admin1', 'admin123'),
('admin2', 'admin234'),
(' admin3', 'admin345');

-- Country Table
INSERT INTO Country (CountryName) VALUES
('India'),
('United States'),
('United Kingdom'),
('Balli'),
('Russia');

-- City Table (Assuming CountryIds 301, 302, 303)
INSERT INTO City (CityName, CountryId) VALUES
('Delhi', 301),
('New York', 302),
('London', 303),
('Kerala',304),
('Bihar',305);

-- Airport Table (Assuming CityIds 201, 202, 203)
INSERT INTO Airport (AirportName, CityId, AirportCode) VALUES
('Indira Gandhi International', 201, 'DEL'),
('John F. Kennedy International', 202, 'JFK'),
('Heathrow Airport', 203, 'LHR');

-- Flights Table (Assuming AirportIds 401, 402, 403, 404)
INSERT INTO Flights (DepAirportId, DepDate, DepTime, ArrAirportId, ArrDate, ArrTime, Status) VALUES
(401, '2025-07-01', '10:00:00', 402, '2025-07-01', '12:00:00', 'Scheduled'),
(403, '2025-07-02', '15:30:00', 404, '2025-07-02', '18:00:00', 'Delayed'),
(401, '2025-07-03', '09:00:00', 403, '2025-07-03', '11:15:00', 'Cancelled');