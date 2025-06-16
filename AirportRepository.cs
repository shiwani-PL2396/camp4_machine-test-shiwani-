using System;
public class AirportRepository : IAirportRepository
{
    public void AddAirport(Airport airport) { }
    public List<Airport> GetAllAirports() => new List<Airport>();
    public Airport GetAirportById(int id) => new Airport();
    public void UpdateAirport(Airport airport) { }
    public void DeleteAirport(int id) { }
}
