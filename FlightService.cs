using System;

public class FlightService : IFlightRepository
{
    public void AddFlight(Flight flight) { /* call ADO.NET SP */ }
    public List<Flight> GetAllFlights() { return new List<Flight>(); }
    public Flight GetFlightById(int id) { return new Flight(); }
    public void UpdateFlight(Flight flight) { }
    public void DeleteFlight(int id) { }
}