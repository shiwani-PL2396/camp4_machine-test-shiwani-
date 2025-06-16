using System;

public class AdminRepository : IAdminRepository
{
    public bool Login(string username, string password) => true;
    public void Register(string username, string password) { }
    public List<Admin> GetAllAdmins() => new List<Admin>();
}
