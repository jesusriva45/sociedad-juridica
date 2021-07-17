package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Eventos;
import com.sociedadjuridica.repository.EventoRepository;

@Service
public class EventoServiceImpl implements EventoService{

	
	@Autowired
	private EventoRepository eventoRepository;
	
	
	@Override
	public List<Eventos> listaEventos() {
		// TODO Auto-generated method stub
		return eventoRepository.findAll();
	}

	@Override
	public Eventos insertaActualizaEvento(Eventos obj) {
		// TODO Auto-generated method stub
		return eventoRepository.save(obj);
	}

	@Override
	public Optional<Eventos> obtienePorId(int idEvento) {
		// TODO Auto-generated method stub
		return eventoRepository.findById(idEvento);
	}

	@Override
	public void eliminaEvento(int id) {
		eventoRepository.deleteById(id);
		
	}

	@Override
	public List<Eventos> listaEventoPorNombreLike(String filtro) {
		// TODO Auto-generated method stub
		return eventoRepository.listaEventoPorNombreLike(filtro);
	}

	/*@Override
	public List<Eventos> listaEventosPorTipo(int idTipo) {
		// TODO Auto-generated method stub
		return null;//eventoRepository.listaEventosPorTipo(idTipo);
	}*/

	@Override
	public List<Eventos> listaCursosPagPrincipal() {
		// TODO Auto-generated method stub
		return eventoRepository.listaCursosPagPrincipal();
	}

}
