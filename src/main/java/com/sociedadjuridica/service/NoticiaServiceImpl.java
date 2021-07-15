package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Noticias;
import com.sociedadjuridica.repository.NoticiaRepository;

@Service
public class NoticiaServiceImpl implements NoticiaService{
	
	
	@Autowired
	private NoticiaRepository noticiaRepository;
	
	@Override
	public List<Noticias> listaNoticias() {
		// TODO Auto-generated method stub
		return noticiaRepository.findAll();
	}

	@Override
	public Noticias insertaActualizaNoticias(Noticias obj) {
		// TODO Auto-generated method stub
		return noticiaRepository.save(obj);
	}

	@Override
	public Optional<Noticias> obtienePorId(int idNoticia) {
		// TODO Auto-generated method stub
		return noticiaRepository.findById(idNoticia);
	}

	@Override
	public void eliminaNoticia(int id) {
		// TODO Auto-generated method stub
		noticiaRepository.deleteById(id);
	}

	@Override
	public List<Noticias> listaNoticiaPorTituloLike(String filtro) {
		// TODO Auto-generated method stub
		return noticiaRepository.listaNoticiaPorTituloLike(filtro);
	}

	@Override
	public List<Noticias> listaNoticiasPorTipo(int idTipo) {
		// TODO Auto-generated method stub
		return noticiaRepository.listaNoticiasPorTipo(idTipo);
	}

}
