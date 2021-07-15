package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.sociedadjuridica.entidad.Postulantes;


public interface PostulanteService {
	
	public abstract List<Postulantes> listaPostulante();
	public abstract Postulantes insertaActualizaUsuario(Postulantes obj);
	
	public abstract Postulantes insertaPostulantes(Postulantes obj);
	
	public abstract Optional<Postulantes> obtenerPorId(int idPostulante);
	public abstract List<Postulantes> listaPostulantePorNombreLike(String filtro);
	//public abstract void eliminaPostulante(int id);	
	
	//
	public abstract void estadoPostulante(int id, byte estado);


}
