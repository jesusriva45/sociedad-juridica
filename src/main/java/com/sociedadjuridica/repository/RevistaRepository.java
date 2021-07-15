package com.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sociedadjuridica.entidad.Revistas;

public interface RevistaRepository extends JpaRepository<Revistas, Integer>{
	
	@Query("Select a from Revistas a where titulo like :fil")
	public abstract List<Revistas> listaRevistaPorNombreLike(@Param("fil") String filtro);
	

}
