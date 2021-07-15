package com.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.TipoEventos;
import com.sociedadjuridica.service.TipoEventoService;

@Controller
public class TipoEventoController {
	
	@Autowired
	private TipoEventoService tipoEventoService;
	
	
	@ResponseBody
	@RequestMapping("/listaTipoEventos")
	public List<TipoEventos> listaTipoEventos(){
		return tipoEventoService.listaTipoEvento();
	}

}
