using System;
using examen_backend_Vladimir.Models;

namespace examen_backend_Vladimir.Repositories
{
    public interface IUsuarioRepository
    {
        Task<IEnumerable<InformarcionUsuarios>> GetAll();
        Task<InformarcionUsuarios> GetUsuario(int id);
        Task<bool> Insert(InformarcionUsuarios form);
        Task<bool> Update(InformarcionUsuarios form);
        Task<bool> Delete(int id);
    }
}

