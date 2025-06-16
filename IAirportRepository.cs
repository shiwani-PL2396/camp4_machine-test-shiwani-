using System;

public interface IAirportRepository
{
    void AddAirport(Airport airport);
    List<Airport> GetAllAirports();
}