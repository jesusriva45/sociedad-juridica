package com.sociedadjuridica.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sociedadjuridica.entidad.Postulantes;

import com.sociedadjuridica.service.PostulanteService;
import com.sociedadjuridica.util.Constantes;



@Controller
public class PostulanteController {
	
	@Autowired
	private PostulanteService postulanteService;
	
		
	@ResponseBody
	@RequestMapping("/listaPostulante")
	public List<Postulantes> listaPostulante() {
		return postulanteService.listaPostulante();
	}
	
	@ResponseBody
	@RequestMapping("/listaPostulantexNombre")
	public List<Postulantes> lista(String filtro) {
		return postulanteService.listaPostulantePorNombreLike(filtro.trim() + "%");
	}
	
	
	@ResponseBody
	@RequestMapping("/registraPostulante")
	public Map<String, Object> insertaPostulantes(Postulantes obj){
		
		Map<String, Object> salida=new HashMap<>();
		
		Postulantes objSalida = postulanteService.insertaPostulantes(obj);
		if(objSalida==null) {
			salida.put("MENSAJE", "Registro erróneo");
		}
		else {
			salida.put("MENSAJE", "Registro exitoso");
		}
		return salida;
		
	}
	
	
	@ResponseBody
	@RequestMapping("/actualizaEstadoPostulante")
	public Map<String, Object> actualiza(@RequestParam("idPostulante") int id,
										@RequestParam("estado") byte estado){
		Map<String, Object> salida=new HashMap<>();
		
		try {
				
				if((id <=0) || (estado <=-1)) {
				
				salida.put("mensaje", Constantes.MENSAJE_ACT_ERROR);
				
				}			
				
			
				else {
					postulanteService.estadoPostulante(id,estado);
					salida.put("mensaje", Constantes.MENSAJE_ACT_EXITOSO);
				}
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_ACT_ERROR);
			
		}
		
		finally {
			List<Postulantes> lista=postulanteService.listaPostulante();
			salida.put("lista", lista);
			
		}
			
		
		return salida;
	}
	

}

