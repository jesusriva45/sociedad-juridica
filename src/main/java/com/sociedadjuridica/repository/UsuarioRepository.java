package com.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sociedadjuridica.entidad.Opcion;
import com.sociedadjuridica.entidad.Rol;
import com.sociedadjuridica.entidad.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

	
	@Query("Select x from Usuario x where x.login = :#{#usu.login} and x.password = :#{#usu.password}")
	public abstract Usuario login(@Param(value = "usu") Usuario bean);
	
	
	@Query("Select a from Usuario a where nombre like :fil")
	public abstract List<Usuario> listaUsuarioPorNombreLike(@Param("fil") String filtro);	
	
	public abstract List<Usuario> findByDni(String dni);
	public abstract List<Usuario> findByDniAndIdUsuarioNot(String dni, int idUsuario);
	
	//----------------- ROL Y OPCIONES ----------------------------
	
	
	@Query("Select p from Opcion p, RolHasOpcion pr, Rol r, UsuarioHasRol u where "
			+ " p.idopcion = pr.opcion.idopcion and "
			+ " pr.rol.idrol = r.idrol and "
			+ " r.idrol = u.rol.idrol and "
			+ " u.usuario.idUsuario = :var_idUsuario")
	public abstract List<Opcion> traerEnlacesDeUsuario(@Param("var_idUsuario") int idUsuario);
	
	@Query("Select r from Rol r, UsuarioHasRol u where "
			+ " r.idrol = u.rol.idrol and "
			+ " u.usuario.idUsuario = :var_idUsuario")
	public abstract List<Rol> traerRolesDeUsuario(@Param("var_idUsuario")int idUsuario);

}
