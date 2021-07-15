package com.sociedadjuridica.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


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
	@RequestMapping(value = "/insertaActualizaEvento", method = RequestMethod.POST)
	public Map<String, Object> insertaActualizaNoticiaNuevo(@RequestParam("id_evento") int id_evento,
			@RequestParam("nombre") String nombre, 
			@RequestParam("descripcion") String descripcion,
			@RequestParam("url") String url, 
			@RequestParam("capacidad") int capacidad, 
			@RequestParam("fecha_pub") String fecha_pub,
			@RequestParam(value = "tipoEventos", required = false) TipoEventos TipoEventos, 
			//@RequestParam(value = "ubigeo", required = false) Ubigeo ubigeo,
			@RequestParam("horario") Horario horario) {
		Map<String, Object> salida = new HashMap<>();
		try {

			Eventos evento = new Eventos();
			
			evento.setIdEvento(id_evento);
			evento.setNombre(nombre);
			evento.setDescripcion(descripcion);
			evento.setUrl(url);
			evento.setCapacidad(capacidad);
			
			Date date1 = new SimpleDateFormat("yyy-MM-dd").parse(fecha_pub);
			
			evento.setFecha_pub(date1);
			
			Ubigeo ubigeo = new Ubigeo();
			
			ubigeo.setIdUbigeo(9119);
			
			
			evento.setTipoEventos(TipoEventos);
			evento.setUbigeo(ubigeo);
			evento.setHorario(horario);
			
			

			if (id_evento != 0) {

				eventoService.insertaActualizaEvento(evento);
				salida.put("MENSAJE", "El evento se ha actualizado con éxito");
			} else if (id_evento == 0) {
				eventoService.insertaActualizaEvento(evento);
				salida.put("MENSAJE", "El evento se ha registrado con éxito");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error en la actualización");
		} finally {
			List<Eventos> lista = eventoService.listaEventos();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	/*formData.append("id_evento", $("#id_evento").val());
				  formData.append("nombre", $("#id_nombre").val());
				  formData.append("descripcion", $("#id_descripcion").val());
				  formData.append("url", $("#id_url").val());
				  formData.append("fecha_pub", $("#id_fecha").val());
				  formData.append("tipoEventos", $("#id_tipo").val());
				  //formData.append("ubigeo", $("#id_rama_nuevo").val());
				  formData.append("horario", $("#id_hora").val());*/
	

}
