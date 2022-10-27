using System;
using MySql.Data.MySqlClient;
using examen_backend_Vladimir.Models;
using Dapper;

namespace examen_backend_Vladimir.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private MySQLConfiguration _connection;

        public UsuarioRepository(MySQLConfiguration connection)
        {
            _connection = connection;
        }

        protected MySqlConnection dbConnection()
        {
            return new MySqlConnection(_connection.Connection);
        }

        public async Task<IEnumerable<InformarcionUsuarios>> GetAll()
        {
            var db = dbConnection();

            var sql = @"SELECT u.id as id_usuario, u.name, u.email, u.password, iu.direccion, iu.telefono, iu.fecha_nacimiento 
                        FROM usuarios u
                        INNER JOIN informacion_usuarios iu ON u.id = iu.id_usuario";

            var result = await db.QueryAsync<InformarcionUsuarios>(sql, new { });

            List<InformarcionUsuarios> rows = new List<InformarcionUsuarios>();

            foreach (InformarcionUsuarios row in result)
            {
                row.Edad = getEdad(row.Fecha_nacimiento);
                rows.Add(row);
            }
            
            return rows;
        }

        public async Task<InformarcionUsuarios> GetUsuario(int id)
        {
            var db = dbConnection();

            var sql = @"SELECT u.id as id_usuario, u.name, u.email, u.password, iu.direccion, iu.telefono, iu.fecha_nacimiento 
                        FROM usuarios u
                        INNER JOIN informacion_usuarios iu ON u.id = iu.id_usuario
                        WHERE u.id = @Id";

            return await db.QueryFirstOrDefaultAsync<InformarcionUsuarios>(sql, new { Id = id });
        }

        public async Task<bool> Insert(InformarcionUsuarios form)
        {
            var db = dbConnection();

            var sql = @"INSERT INTO usuarios(name, email, password)
                        VALUES (@Name, @Email, @Password)";

            var result = await db.ExecuteAsync(sql, new { form.Name, form.Email, form.Password });

            var id = db.ExecuteScalar("SELECT LAST_INSERT_ID()");

            sql = @"INSERT INTO informacion_usuarios(id_usuario, direccion, telefono, fecha_nacimiento)
                        VALUES (@Id_usuario, @Direccion, @Telefono, @Fecha_nacimiento)";

            result = await db.ExecuteAsync(sql, new { Id_usuario = id, form.Direccion, form.Telefono, form.Fecha_nacimiento });

            return result > 0;
        }

        public async Task<bool> Update(InformarcionUsuarios form)
        {
            var db = dbConnection();

            var sql = @"UPDATE usuarios SET name = @Name, email = @Email, password = @Password
                        WHERE id = @Id";

            var result = await db.ExecuteAsync(sql, new { form.Name, form.Email, form.Password, Id = form.Id_usuario });

            sql = @"UPDATE informacion_usuarios SET id_usuario = @Id_Usuario, direccion = @Direccion, telefono = @Telefono, fecha_nacimiento = @Fecha_Nacimiento
                        WHERE id_usuario = @Id";

            result = await db.ExecuteAsync(sql, new { form.Id_usuario, form.Direccion, form.Telefono, form.Fecha_nacimiento, Id = form.Id_usuario });

            return result > 0;
        }

        public async Task<bool> Delete(int id)
        {
            var db = dbConnection();

            var sql = @"DELETE FROM informacion_usuarios WHERE id_usuario = @Id";

            var result = await db.ExecuteAsync(sql, new { Id = id });

            sql = @"DELETE FROM usuarios WHERE id = @Id";

            result = await db.ExecuteAsync(sql, new { Id = id });

            return result > 0;
        }

        public int getEdad(DateTime fecha)
        {
            int edad = DateTime.Today.AddTicks(-fecha.Ticks).Year - 1;
            return edad;
        }
    }
}

