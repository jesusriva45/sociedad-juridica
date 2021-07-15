package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.sociedadjuridica.entidad.Eventos;

public interface EventoService {
	
	
	public abstract List<Eventos> listaEventos();
	public abstract Eventos insertaActualizaEvento(Eventos obj);
	public abstract Optional<Eventos> obtienePorId(int idEvento);
	
	public abstract void eliminaEvento(int id);
	
	public abstract List<Eventos> listaEventoPorNombreLike(String filtro);
	
	public abstract List<Eventos> listaEventosPorTipo(int idTipo);

	
	

}
