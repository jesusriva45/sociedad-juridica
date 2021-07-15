package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Revistas;
import com.sociedadjuridica.repository.RevistaRepository;

@Service
public class RevistaServiceImpl implements RevistaService {

	@Autowired
	private RevistaRepository revistaRepository;
	
	@Override
	public List<Revistas> listaRevistas() {
		return revistaRepository.findAll();
	}

	@Override
	public Revistas insertaActualizaRevistas(Revistas obj) {
		return revistaRepository.save(obj);
	}

	@Override
	public Optional<Revistas> obtenerPorId(int idRevista) {
		return revistaRepository.findById(idRevista);
	}

	@Override
	public List<Revistas> listaRevistasPorNombre(String filtro) {
		return revistaRepository.listaRevistaPorNombreLike(filtro);
	}

	@Override
	public void eliminaRevista(int id) {
		revistaRepository.deleteById(id);
		
	}

}
