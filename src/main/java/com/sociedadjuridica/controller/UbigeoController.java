package com.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.Ubigeo;
import com.sociedadjuridica.service.UbigeoService;

@Controller
public class UbigeoController {
	
	@Autowired
	private UbigeoService ubigeoService;
	
	@ResponseBody
	@RequestMapping("/listaDepartamentos")
	public List<String> verDepartamentos(){
		return ubigeoService.listaDepartamentos();
	}
	
	@ResponseBody
	@RequestMapping("/listaProvincias")
	public List<String> verProvincias(String departamento){
		return ubigeoService.listaProvincias(departamento);
	}
	
	@ResponseBody
	@RequestMapping("/listaDistritos")
	public List<Ubigeo> verDistritos(String departamento, String provincia){
		return ubigeoService.listaDistritos(departamento, provincia);
	}

}
