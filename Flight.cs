using System;

public class Flight
{
    public int FlightId { get; set; }
    public int DepAirportId { get; set; }
    public DateTime DepDate { get; set; }
    public TimeSpan DepTime { get; set; }
    public int ArrAirportId { get; set; }
    public DateTime ArrDate { get; set; }
    public TimeSpan ArrTime { get; set; }
    public string Status { get; set; }
}
