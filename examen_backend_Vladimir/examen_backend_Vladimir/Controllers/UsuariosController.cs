using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using examen_backend_Vladimir.Repositories;
using examen_backend_Vladimir.Models;
using Microsoft.AspNetCore.Mvc;

namespace examen_backend_Vladimir.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuariosController : Controller
    {
        private readonly IUsuarioRepository _usuarioRepository;

        public UsuariosController(IUsuarioRepository usuarioRepository)
        {
            _usuarioRepository = usuarioRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            return Ok(await _usuarioRepository.GetAll());
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetUsuario(int id)
        {
            return Ok(await _usuarioRepository.GetUsuario(id));
        }

        [HttpPost]
        public async Task<IActionResult> Insert([FromBody] InformarcionUsuarios informarcionUsuarios)
        {
            if (informarcionUsuarios == null)
                return BadRequest();

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var created = await _usuarioRepository.Insert(informarcionUsuarios);

            return Created("created", created);
        }

        [HttpPut]
        public async Task<IActionResult> Update([FromBody] InformarcionUsuarios informarcionUsuarios)
        {
            if (informarcionUsuarios == null)
                return BadRequest();

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            await _usuarioRepository.Update(informarcionUsuarios);

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            await _usuarioRepository.Delete(id);
            return NoContent();
        }
    }
}

