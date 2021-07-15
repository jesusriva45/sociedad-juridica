package com.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.sociedadjuridica.entidad.Noticias;

public interface NoticiaRepository extends JpaRepository<Noticias, Integer>{
	
	
	@Query("Select a from Noticias a where titulo like :fil")
	public abstract List<Noticias> listaNoticiaPorTituloLike(@Param("fil") String filtro);
	
	
	
	//----------- LISTADO DE NOTICIAS POR TIPO DE NOTICIA -----------------//
	//--------------- FALTA CREAR SU STORE PROCEDURE --------------------//
	@Query(value = "CALL SP_GET_NOTICIAS_POR_TIPO(:id_tipo)", nativeQuery = true)
	public List<Noticias> listaNoticiasPorTipo(@Param("id_tipo")int id_tipo);

}
