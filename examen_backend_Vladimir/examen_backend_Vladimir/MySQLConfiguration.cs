using System;
namespace examen_backend_Vladimir
{
    public class MySQLConfiguration
    {
        public MySQLConfiguration(string connection)
        {
            Connection = connection;
        }

        public string Connection { get; set; }
    }
}