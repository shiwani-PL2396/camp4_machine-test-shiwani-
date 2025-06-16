namespace DB_Connection
{
    using Microsoft.Data.SqlClient;
    using System.Configuration;
    namespace ClassLibraryDatabaseConnect
    {
        public class DatabaseConnectionManager
        {
            //Each project is having App.config -- feth connection string from there

            //Estabilish the connection and return
            //Sql Connection
            public static SqlConnection OpenConnection(string _connectionString)
            {
                SqlConnection connection = null;
                try
                {
                    if (_connectionString != null || Convert.ToString(connection.State) == "Closed")
                    {
                        connection = new SqlConnection(_connectionString);
                        connection.Open();
                    }
                    return connection;
                }
                catch (SqlException sqlEx)
                {
                    //Log the SQL exception
                    Console.WriteLine("SQL Error: " + sqlEx.Message);
                    return null;
                }

                catch (Exception ex)
                {
                    //Log the exception
                    Console.WriteLine("Error: " + ex.Message);
                    return null;
                }
            }
        }
    }
}