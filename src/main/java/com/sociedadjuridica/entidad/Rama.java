package com.sociedadjuridica.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rama")
public class Rama {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idrama")
	private int idRama;
	
	@Column(name = "nombre")
	private String descripcion;
	
	
	//get y set
	public int getIdRama() {
		return idRama;
	}

	public void setIdRama(int idRama) {
		this.idRama = idRama;
	}

	public String getDescripcion() {
		return descripcion;
	}

	

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	

}
