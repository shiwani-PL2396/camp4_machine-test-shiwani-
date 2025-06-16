using System;

public interface ICountryRepository
{
    void AddCountry(Country country);
    List<Country> GetAllCountries();
}