package com.sociedadjuridica.entidad;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="pagina_principal")
public class PaginaPrincipal implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idpagina_principal")
	private int idpagina_principal;

	@Column(name = "titulo" , nullable = true,insertable=true)
	private String titulo;
	
	@Column(name = "descripcion", nullable = true,insertable=true)
	private String descripcion;

	@Column(name = "url", nullable = true,insertable=true)
	private String url;
	
	@Column(name = "imagen" , nullable = true,insertable=true)
	private String imagen;

	public int getIdpagina_principal() {
		return idpagina_principal;
	}

	public void setIdpagina_principal(int idpagina_principal) {
		this.idpagina_principal = idpagina_principal;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	

}
