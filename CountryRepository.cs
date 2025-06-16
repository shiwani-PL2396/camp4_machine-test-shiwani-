using System;

public class CountryRepository : ICountryRepository
{
    public void AddCountry(Country country) { }
    public List<Country> GetAllCountries() => new List<Country>();
    public Country GetCountryById(int id) => new Country();
    public void UpdateCountry(Country country) { }
    public void DeleteCountry(int id) { }
}
