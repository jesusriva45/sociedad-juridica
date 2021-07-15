package com.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.Cargo;

import com.sociedadjuridica.service.CargoService;

@Controller
public class CargoController {
	
	
	@Autowired
	private CargoService cargoService;
	

	@ResponseBody
	@RequestMapping("/listaCargo")
	public List<Cargo> listaCargo() {
		return cargoService.listaCargo();
	}
	
	
	
}
