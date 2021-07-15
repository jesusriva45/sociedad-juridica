package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Opcion;
import com.sociedadjuridica.entidad.Rol;
import com.sociedadjuridica.entidad.Usuario;
import com.sociedadjuridica.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	public Usuario login(Usuario bean) {
		return usuarioRepository.login(bean);
	}
	
	
	@Override
	public List<Usuario> listaUsuario() {
		// TODO Auto-generated method stub
		return usuarioRepository.findAll();
	}

	@Override
	public Usuario insertaActualizaUsuario(Usuario obj) {
		// TODO Auto-generated method stub
		return usuarioRepository.save(obj);
	}

	@Override
	public Optional<Usuario> obtienePorId(int idUsuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.findById(idUsuario);
	}

	@Override
	public void eliminaUsuario(int id) {
		// TODO Auto-generated method stub
		usuarioRepository.deleteById(id);
	}

	@Override
	public List<Usuario> listaUsuarioPorNombreLike(String filtro) {
		// TODO Auto-generated method stub
		return usuarioRepository.listaUsuarioPorNombreLike(filtro);
	}

	@Override
	public List<Usuario> buscaPorDni(String dni) {
		// TODO Auto-generated method stub
		return usuarioRepository.findByDni(dni);
	}

	@Override
	public List<Usuario> buscaPorDniAndIdUsuario(String dni, int idUsuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.findByDniAndIdUsuarioNot(dni, idUsuario);
	}


	@Override
	public List<Rol> traerRolesDeUsuario(int idUsuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.traerRolesDeUsuario(idUsuario);
	}


	@Override
	public List<Opcion> traerEnlacesDeUsuario(int idUsuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.traerEnlacesDeUsuario(idUsuario);
	}
	

	
	
	

}
