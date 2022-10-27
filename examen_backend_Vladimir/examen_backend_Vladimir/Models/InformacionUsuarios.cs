using System;
namespace examen_backend_Vladimir.Models
{
    public class InformarcionUsuarios
    {
        public int Id_usuario { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public DateTime Fecha_nacimiento { get; set; }
        public int Edad { get; set; }
    }
}

