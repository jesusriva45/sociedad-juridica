package com.sociedadjuridica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VistasController {
	
	
	//vistas del front
	@RequestMapping("/verIndex")
	public String verIndex() {
		return "index";
	}
	
	@RequestMapping("/verUltimasNoticias")
	public String verUltimasNoticias() {
		return "ultimasNoticias";
	}
	
	@RequestMapping("/verNoticiasNacionales")
	public String verNoticiasNacionales() {
		return "noticiasNacionales";
	}

	@RequestMapping("/verNoticiasInternacionales")
	public String verNoticiasInternacionales() {
		return "noticiasInternacionales";
	}
	
	@RequestMapping("/verQuienesSomos")
	public String verQuienesSomos() {
		return "quienesSomos";
	}
	
	@RequestMapping("/verComisiones")
	public String verComisiones() {
		return "comisiones";
	}
	
	@RequestMapping("/verConsejoConsultivo")
	public String verConsejoConsultivo() {
		return "consejoConsultivo";
	}
	
	@RequestMapping("/verConsejoEditorial")
	public String verConsejoEditorial() {
		return "consejoEditorial";
	}
	
	@RequestMapping("/verAsociadosExtraordinarios")
	public String verAsociadosExtraordinarios() {
		return "asociadosExtraordinarios";
	}
	
	@RequestMapping("/verEventosProximos")
	public String verEventosProximos() {
		return "eventosProximos";
	}
	
	@RequestMapping("/verEventosPasados")
	public String verEventosPasados() {
		return "eventosPasados";
	}
	
	@RequestMapping("/verSeminarios")
	public String verSeminarios() {
		return "seminarios";
	}
	
	@RequestMapping("/verCursos")
	public String verCursos() {
		return "cursos";
	}
	
	@RequestMapping("/verOtros")
	public String verOtros() {
		return "otros";
	}
	
	@RequestMapping("/verRevistas")
	public String verRevistas() {
		return "revistas";
	}
	
	@RequestMapping("/verPostula")
	public String verPostula() {
		return "postulaSJ";
	}
	
	
	//vistas para entrar al sistema(login)
	
	@RequestMapping("/verLogin")
	public String verLogin() {
		return "login";
	}
	
	@RequestMapping("/verInicio")
	public String verInicio(ModelMap model) {
		model.addAttribute("ruta", "verInicio");
		return "inicio";
	}
	
	@RequestMapping("/verPostulante")
	public String verPostulante(ModelMap model) {
		model.addAttribute("ruta", "verPostulante");
		return "ver-postulante";
	}
	
	
	@RequestMapping("/verUsuarios")
	public String verUsuarios(ModelMap model) {
		model.addAttribute("ruta", "verUsuarios");
		return "ver-usuarios";
	}
	
	@RequestMapping("/verLoNuevo")
	public String verLoNuevo(ModelMap model) {
		model.addAttribute("ruta", "verLoNuevo");
		return "lo-nuevo";
	}
	
	@RequestMapping("/verEventos")
	public String verEventos(ModelMap model) {
		model.addAttribute("ruta", "verEventos");
		return "eventos";
	}
	
	@RequestMapping("/verVentaRevistas")
	public String verVentaRevistas(ModelMap model) {
		model.addAttribute("ruta", "verVentaRevistas");
		return "venta-revistas";
	}
	
	@RequestMapping("/verNosotros")
	public String verNosotros(ModelMap model) {
		model.addAttribute("ruta", "verNosotros");
		return "nosotros";
	}


}







