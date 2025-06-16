using System;

public class CityRepository : ICityRepository
{
    public void AddCity(City city) { }
    public List<City> GetAllCities() => new List<City>();
    public City GetCityById(int id) => new City();
    public void UpdateCity(City city) { }
    public void DeleteCity(int id) { }
}
