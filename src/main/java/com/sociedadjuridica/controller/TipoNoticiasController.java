package com.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.sociedadjuridica.entidad.TipoNoticias;
import com.sociedadjuridica.service.TipoNoticiaService;

@Controller
public class TipoNoticiasController {
	
	@Autowired
	private TipoNoticiaService tipoNoticiaService;
	
	@ResponseBody
	@RequestMapping("/listaTipoNoticias")
	public List<TipoNoticias> listaTipoNoticias(){
		return tipoNoticiaService.listaTipoNoticia();
	}

}
