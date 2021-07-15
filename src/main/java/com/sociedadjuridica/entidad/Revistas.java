package com.sociedadjuridica.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "revistas")
public class Revistas {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idrevistas")
	private int idRevistas;
	
	private String titulo;
	
	private String descripcion;
	
	@Column(name = "precio_pres")
	private double precioPresencial;
	
	@Column(name = "precio_vir")
	private double precioVirtual;
	
	
	private String autor;
	
	@Column(name = "foto")
	private String foto;
	
	

	public int getIdRevistas() {
		return idRevistas;
	}

	public void setIdRevistas(int idRevistas) {
		this.idRevistas = idRevistas;
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

	public double getPrecioPresencial() {
		return precioPresencial;
	}

	public void setPrecioPresencial(double precioPresencial) {
		this.precioPresencial = precioPresencial;
	}

	public double getPrecioVirtual() {
		return precioVirtual;
	}

	public void setPrecioVirtual(double precioVirtual) {
		this.precioVirtual = precioVirtual;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	
	
	
	
	
	
	
	
	
	
	
	
}
