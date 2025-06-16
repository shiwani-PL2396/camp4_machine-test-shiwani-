using System;

public class FlightRepository : IFlightRepository
{
    public void AddFlight(Flight flight)
    {
        // Implementation using ADO.NET
    }

    public List<Flight> GetAllFlights() => new List<Flight>();

    public Flight GetFlightById(int id) => new Flight();

    public void UpdateFlight(Flight flight) { }

    public void DeleteFlight(int id) { }
}

