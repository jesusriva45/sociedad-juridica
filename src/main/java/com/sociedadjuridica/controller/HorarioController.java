package com.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.Horario;
import com.sociedadjuridica.service.HorarioService;

@Controller
public class HorarioController {
	
	@Autowired
	private HorarioService horarioService;
	
	@ResponseBody
	@RequestMapping("/listaHorarios")
	public List<Horario> listaHorarios(){
		return horarioService.listaHorario();
	}
	

}
