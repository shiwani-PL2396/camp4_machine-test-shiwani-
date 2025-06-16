using System;

public class Class1
{
    public interface IFlightRepository
    {
        void AddFlight(Flight flight);
        List<Flight> GetAllFlights();
        Flight GetFlightById(int id);
        void UpdateFlight(Flight flight);
        void DeleteFlight(int id);
    }

}
