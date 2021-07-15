package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Postulantes;
import com.sociedadjuridica.repository.PostulanteRepository;


@Service
public class PostulanteServiceImpl implements PostulanteService {
	
	
	@Autowired
	private PostulanteRepository postulanteRepository;

	@Override
	public List<Postulantes> listaPostulante() {
		// TODO Auto-generated method stub
		return postulanteRepository.findAll();
	}

	@Override
	public Postulantes insertaActualizaUsuario(Postulantes obj) {
		// TODO Auto-generated method stub
		return postulanteRepository.save(obj);
	}

	@Override
	public Optional<Postulantes> obtenerPorId(int idPostulante) {
		// TODO Auto-generated method stub
		return postulanteRepository.findById(idPostulante);
	}

	@Override
	public List<Postulantes> listaPostulantePorNombreLike(String filtro) {
		// TODO Auto-generated method stub
		return postulanteRepository.listaPostulantePorNombreLike(filtro);
	}

	@Override
	public Postulantes insertaPostulantes(Postulantes obj) {
		return postulanteRepository.save(obj);
	}

	@Override
	public void estadoPostulante(int id, byte estado) {
		postulanteRepository.estadoPostulante(id, estado);		
		
	}

}
