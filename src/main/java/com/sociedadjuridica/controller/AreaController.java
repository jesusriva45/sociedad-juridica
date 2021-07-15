package com.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.Area;
import com.sociedadjuridica.service.AreaService;

@Controller
public class AreaController {
	
	
	@Autowired
	private AreaService areaService;
	

	@ResponseBody
	@RequestMapping("/listaArea")
	public List<Area> listaCargo() {
		return areaService.listaArea();
	}
	
	

}
