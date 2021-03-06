package com.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sociedadjuridica.entidad.Eventos;


public interface EventoRepository extends JpaRepository<Eventos, Integer>{
	
	@Query("Select a from Eventos a where nombre like :fil")
	public abstract List<Eventos> listaEventoPorNombreLike(@Param("fil") String filtro);
	
	
	
	//----------- LISTADO DE EVENTOS POR TIPO DE EVENTO -----------------//
	//--------------- FALTA CREAR SU STORE PROCEDURE --------------------//
	//@Query(value = "CALL SP_GET_EVENTOS_POR_TIPO(:id_tipo)", nativeQuery = true)
	//public List<Eventos> listaEventosPorTipo(@Param("id_tipo")int id_tipo);
	
	//-SELECT * FROM sociedad_juridica.eventos where idtipo_eventos=3   order by ideventos desc limit 2;
	
	//@Query("Select a from Eventos a where tipoEventos.idTipoEvento = 3 order by idEvento desc limit 2")	
	
	
	@Query(nativeQuery = true,
    value = "select * from Eventos a where a.idtipo_eventos = 3 order by ideventos desc limit 2")
	public abstract List<Eventos> listaCursosPagPrincipal();
}
