using System;

public class AdminService : IAdminRepository
{
    public bool Login(string username, string password) { return true; }
    public void Register(string username, string password) { }
    public List<Admin> GetAllAdmins() { return new List<Admin>(); }
}

