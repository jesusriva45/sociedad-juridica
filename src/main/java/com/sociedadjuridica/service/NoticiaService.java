package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.sociedadjuridica.entidad.Noticias;

public interface NoticiaService {
	
	
	public abstract List<Noticias> listaNoticias();
	public abstract Noticias insertaActualizaNoticias(Noticias obj);
	public abstract Optional<Noticias> obtienePorId(int idNoticia);
	
	public abstract void eliminaNoticia(int id);
	
	public abstract List<Noticias> listaNoticiaPorTituloLike(String filtro);
	
	public abstract List<Noticias> listaNoticiasPorTipo(int idTipo);

}
