package com.sociedadjuridica.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sociedadjuridica.entidad.Postulantes;

public interface PostulanteRepository extends JpaRepository<Postulantes, Integer> {

	@Query("Select a from Postulantes a where nombre like :fil")
	public abstract List<Postulantes> listaPostulantePorNombreLike(@Param("fil") String filtro);

	public abstract List<Postulantes> findByDni(String dni);

	@Transactional
	@Modifying
	@Query(value = "CALL sp_actualiza_estado_postulante(:idPostulante, :estado)", nativeQuery = true)
	public void estadoPostulante(@Param("idPostulante") int id, @Param("estado") byte estado);

	/*
	 * @Transactional
	 * 
	 * @Procedure(procedureName = "sp_actualiza_estado_postulante") public String
	 * estadoPostulante(@Param("idPostulante")int id,@Param("estado")byte estado);
	 */

}
