package com.sociedadjuridica.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.Eventos;
import com.sociedadjuridica.entidad.Horario;

import com.sociedadjuridica.entidad.TipoEventos;

import com.sociedadjuridica.entidad.Ubigeo;
import com.sociedadjuridica.entidad.Usuario;
import com.sociedadjuridica.service.EventoService;

@Controller
public class EventoController {
	
	@Autowired
	private EventoService eventoService;
	
	@ResponseBody
	@RequestMapping("/listaEventos")
	public List<Eventos> listaEventos(){
		return eventoService.listaEventos();
	}
	
	
	@ResponseBody
	@RequestMapping("/listaEventosPagPrincipal")
	public List<Eventos> listaEventosPagPrincipal(){
		return eventoService.listaCursosPagPrincipal();
	}
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value = "/insertaActualizaEvento", method = RequestMethod.POST)
	public Map<String, Object> insertaActualizaNoticiaNuevo(@RequestParam("id_evento") int id_evento,
			@RequestParam("nombre") String nombre, 
			@RequestParam("descripcion") String descripcion,
			@RequestParam("url") String url, 
			@RequestParam("venta_entrada") double venta_entrada, 
			@RequestParam("capacidad") int capacidad, 
			@RequestParam("fecha_pub") String fecha_pub,
			@RequestParam(value = "tipoEventos", required = false) TipoEventos TipoEventos, 
			//@RequestParam(value = "ubigeo", required = false) Ubigeo ubigeo,
			@RequestParam("horario") Horario horario,
			@RequestParam("imagen") String imagen) {
		Map<String, Object> salida = new HashMap<>();
		try {

			Eventos evento = new Eventos();
			
			evento.setIdEvento(id_evento);
			evento.setNombre(nombre);
			evento.setDescripcion(descripcion);
			evento.setUrl(url);
			evento.setEntrada(venta_entrada);
			evento.setCapacidad(capacidad);
			
			Date date1 = new SimpleDateFormat("yyy-MM-dd").parse(fecha_pub);
			
			evento.setFecha_pub(date1);
			
			Ubigeo ubigeo = new Ubigeo();
			
			ubigeo.setIdUbigeo(9119);
			
			
			evento.setTipoEventos(TipoEventos);
			evento.setUbigeo(ubigeo);
			evento.setHorario(horario);
			evento.setImagen(imagen);
			

			if (id_evento != 0) {

				eventoService.insertaActualizaEvento(evento);
				salida.put("MENSAJE", "El evento se ha actualizado con ??xito");
			} else if (id_evento == 0) {
				eventoService.insertaActualizaEvento(evento);
				salida.put("MENSAJE", "El evento se ha registrado con ??xito");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error en la actualizaci??n");
		} finally {
			List<Eventos> lista = eventoService.listaEventos();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	@ResponseBody
	@RequestMapping("/eliminaCrudEvento")
	public Map<String, Object> elimina(int id) {
		Map<String, Object> salida = new HashMap<>();
		try {
			Optional<Eventos> objSalida = eventoService.obtienePorId(id);
			if (objSalida.isPresent()) {
				eventoService.eliminaEvento(id);
				salida.put("MENSAJE","El evento"+ objSalida.get().getNombre() + " ha sido eliminado");
			} else {
				salida.put("MENSAJE", "Error en la eliminaci??n");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error en la eliminaci??n");
		} finally {
			List<Eventos> lista = eventoService.listaEventos();
			salida.put("lista", lista);
		}
		return salida;
	}
	

}
