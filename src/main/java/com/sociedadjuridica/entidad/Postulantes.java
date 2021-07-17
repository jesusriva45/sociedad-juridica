package com.sociedadjuridica.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "postulantes")
public class Postulantes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idpostulantes")
	private int idPostulante;

	private String nombre;
	private String telefono;
	private String dni;
	private String email;
	private byte estado;

	private String cvPDF;
	private String nameCvPDF;

	private String consolidadoNotaPDF;
	private String nameConsolidadoNotaPDF;

	//
	public String getNombreEstado() {
		String valor = "";
		if (estado == 0) {
			valor = "Pendiente";
		} else if (estado == 1) {
			valor = "Rechazado";
		} else {
			valor = "Aceptado";
		}
		return valor;
	}
	//

	public int getIdPostulante() {
		return idPostulante;
	}

	public void setIdPostulante(int idPostulante) {
		this.idPostulante = idPostulante;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public byte getEstado() {
		return estado;
	}

	public void setEstado(byte estado) {
		this.estado = estado;
	}

	public String getCvPDF() {
		return cvPDF;
	}

	public void setCvPDF(String cvPDF) {
		this.cvPDF = cvPDF;
	}

	public String getNameCvPDF() {
		return nameCvPDF;
	}

	public void setNameCvPDF(String nameCvPDF) {
		this.nameCvPDF = nameCvPDF;
	}

	public String getConsolidadoNotaPDF() {
		return consolidadoNotaPDF;
	}

	public void setConsolidadoNotaPDF(String consolidadoNotaPDF) {
		this.consolidadoNotaPDF = consolidadoNotaPDF;
	}

	public String getNameConsolidadoNotaPDF() {
		return nameConsolidadoNotaPDF;
	}

	public void setNameConsolidadoNotaPDF(String nameConsolidadoNotaPDF) {
		this.nameConsolidadoNotaPDF = nameConsolidadoNotaPDF;
	}

}
