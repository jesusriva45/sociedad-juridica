package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.sociedadjuridica.entidad.PaginaPrincipal;

public interface PaginaPrincipalService {
	
	
	
	public abstract List<PaginaPrincipal> listaPaginaPrincipal();
	public abstract PaginaPrincipal insertaActualizaPaginaPrincipal(PaginaPrincipal obj);
	public abstract Optional<PaginaPrincipal> obtenerPorId(int id);
	public abstract void eliminaPaginaPrincipal(int id);
}
