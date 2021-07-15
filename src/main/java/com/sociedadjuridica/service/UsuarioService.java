package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.sociedadjuridica.entidad.Opcion;
import com.sociedadjuridica.entidad.Rol;
import com.sociedadjuridica.entidad.Usuario;

public interface UsuarioService {
	
	
	public abstract Usuario login(Usuario bean);
	
	public abstract List<Usuario> listaUsuario();
	public abstract Usuario insertaActualizaUsuario(Usuario obj);
	public abstract Optional<Usuario> obtienePorId(int idUsuario);
	
	public abstract void eliminaUsuario(int id);
	
	public abstract List<Usuario> listaUsuarioPorNombreLike(String filtro);
	public abstract List<Usuario> buscaPorDni(String dni);
	public abstract List<Usuario> buscaPorDniAndIdUsuario(String dni, int idUsuario); 

	
	
	//------------ ROL Y OPCIONES -----------------
	
	public abstract List<Rol> traerRolesDeUsuario(int idUsuario);
	
	public abstract List<Opcion> traerEnlacesDeUsuario(int idUsuario);
	
}
