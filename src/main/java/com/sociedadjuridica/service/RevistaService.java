package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.sociedadjuridica.entidad.Revistas;

public interface RevistaService {
	
	public abstract List<Revistas> listaRevistas();
	
	public abstract Revistas insertaActualizaRevistas(Revistas obj);
	
	public abstract Optional<Revistas> obtenerPorId(int idRevista);
	public abstract List<Revistas> listaRevistasPorNombre(String filtro);
	
	public abstract void eliminaRevista(int id);
	
}
