package com.sociedadjuridica.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.Area;
import com.sociedadjuridica.entidad.Cargo;
import com.sociedadjuridica.entidad.Ubigeo;
import com.sociedadjuridica.entidad.Usuario;
import com.sociedadjuridica.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@ResponseBody
	@RequestMapping("/listaUsuario")
	public List<Usuario> listaUsuario() {
		return usuarioService.listaUsuario();
	}

	@ResponseBody
	@RequestMapping("/consultaCrudUsuarios")
	public List<Usuario> lista(String filtro) {
		return usuarioService.listaUsuarioPorNombreLike(filtro.trim() + "%");
	}
	

	@ResponseBody
	@RequestMapping(value = "/insertaActualizaUsuario", method = RequestMethod.POST)
	public Map<String, Object> insertaActualizaUsuario(@RequestParam("id_usuario") int id_usuario,
			@RequestParam("nombre") String nombre, @RequestParam("apellidoPat") String apellidoPat,
			@RequestParam("apellidoMat") String apellidoMat, @RequestParam("telefono") String telefono,
			@RequestParam("direccion") String direccion, @RequestParam("dni") String dni,
			@RequestParam("fecha_nac") String fecha_nac, @RequestParam("correo") String correo,
			@RequestParam("password") String password, @RequestParam("sexo") String sexo,
			@RequestParam("cargo") Cargo cargo, @RequestParam("area") Area area, @RequestParam("ubigeo") Ubigeo ubigeo,
			@RequestParam("foto") String foto) {
		Map<String, Object> salida = new HashMap<>();
		try {

			Usuario obj = new Usuario();

			obj.setIdUsuario(id_usuario);
			obj.setNombre(nombre);
			obj.setApellPaterno(apellidoPat);
			obj.setApellMaterno(apellidoMat);
			obj.setTelefono(telefono);
			obj.setDireccion(direccion);
			obj.setDni(dni);

			Date date1 = new SimpleDateFormat("yyy-MM-dd").parse(fecha_nac);

			obj.setFechaNacimiento(date1);
			obj.setCorreo(correo);
			obj.setPassword(password);
			obj.setSexo(sexo);

			obj.setCargo(cargo);

			obj.setArea(area);

			obj.setUbigeo(ubigeo);

			obj.setFoto(foto);

			String login = "";
			login = "SJ" + dni;

			obj.setLogin(login);

			if (id_usuario != 0) {

				usuarioService.insertaActualizaUsuario(obj);
				salida.put("MENSAJE", "Usuario " + obj.getNombre() + " se ha actualizado con éxtio");
			} else if (id_usuario == 0) {
				usuarioService.insertaActualizaUsuario(obj);
				salida.put("MENSAJE", "Usuario " + obj.getNombre() + " se ha registrado con éxtio");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error en la actualización");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuario();
			salida.put("lista", lista);
		}
		return salida;
	}

	@RequestMapping("/registraUsuario")
	@ResponseBody
	public Map<String, Object> registra(Usuario obj) {
		Map<String, Object> salida = new HashMap<String, Object>();

		String login = "";
		login = "SJ" + obj.getDni();

		obj.setLogin(login);

		Usuario objSalida = usuarioService.insertaActualizaUsuario(obj);
		if (objSalida == null) {
			salida.put("MENSAJE", "Registro erróneo");
		} else {
			salida.put("MENSAJE", "Usuario " + obj.getNombre() + " se ha registrado con éxtio");
		}
		return salida;
	}

	@ResponseBody
	@RequestMapping("/eliminaCrudUsuario")
	public Map<String, Object> elimina(int id) {
		Map<String, Object> salida = new HashMap<>();
		try {
			Optional<Usuario> objSalida = usuarioService.obtienePorId(id);
			if (objSalida.isPresent()) {
				usuarioService.eliminaUsuario(id);
				salida.put("MENSAJE", objSalida.get().getNombre() + " ha sido eliminado");
			} else {
				salida.put("MENSAJE", "Error en la eliminación");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error en la eliminación");
		} finally {
			List<Usuario> lista = usuarioService.listaUsuario();
			salida.put("lista", lista);
		}
		return salida;
	}

}
