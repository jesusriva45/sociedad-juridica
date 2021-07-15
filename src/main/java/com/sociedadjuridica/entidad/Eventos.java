package com.sociedadjuridica.entidad;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "eventos")
public class Eventos {

	// @JoinColumn recibe el mismo nombre del atributo que está en la Tabla Eventos

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ideventos")
	private int idEvento;

	private String nombre;
	
	@Column(name = "descripcion")
	private String descripcion;
	

	private String url;

	@Column(name = "capacidad")
	private int capacidad;

	@Temporal(TemporalType.DATE) /* https://www.oscarblancarteblog.com/2016/11/23/mapeo-fechas-temporal/ */
	@Column(name = "fecha_hora_pub")
	private Date fecha_pub;

	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idtipo_eventos")
	private TipoEventos tipoEventos;

	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_ubigeo")
	private Ubigeo ubigeo;

	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_horario")
	private Horario horario;

	public int getIdEvento() {
		return idEvento;
	}

	public void setIdEvento(int idEvento) {
		this.idEvento = idEvento;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public int getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getFecha_pub() {
		return fecha_pub;
	}

	public void setFecha_pub(Date fecha_pub) {
		this.fecha_pub = fecha_pub;
	}

	public TipoEventos getTipoEventos() {
		return tipoEventos;
	}

	public void setTipoEventos(TipoEventos tipoEventos) {
		this.tipoEventos = tipoEventos;
	}

	public Ubigeo getUbigeo() {
		return ubigeo;
	}

	public void setUbigeo(Ubigeo ubigeo) {
		this.ubigeo = ubigeo;
	}

	public Horario getHorario() {
		return horario;
	}

	public void setHorario(Horario horario) {
		this.horario = horario;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
