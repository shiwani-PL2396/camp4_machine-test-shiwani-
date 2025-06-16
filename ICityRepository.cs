using System;
public interface ICityRepository
{
    void AddCity(City city);
    List<City> GetAllCities();
}
