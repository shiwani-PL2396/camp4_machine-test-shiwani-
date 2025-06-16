using System;
public interface IAdminRepository
{
    bool Login(string username, string password);
    void Register(string username, string password);
    List<Admin> GetAllAdmins();
}
