package com.sociedadjuridica.controller;


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

import com.sociedadjuridica.entidad.PaginaPrincipal;
import com.sociedadjuridica.service.PaginaPrincipalService;


@Controller
public class PaginaPrincipalController {
	
	
	@Autowired
	private PaginaPrincipalService pagPrincipalService;
	
	
	@ResponseBody
	@RequestMapping("/listaPaginaPrincipal")
	public List<PaginaPrincipal> listaPaginaPrincipal(){
		return pagPrincipalService.listaPaginaPrincipal();
	}
	
	

	@ResponseBody
	@RequestMapping(value = "/insertaActualizaPaginaPrincipal", method = RequestMethod.POST)
	public Map<String, Object> insertaActualizaPaginaPrincipal(@RequestParam("id_pagina_principal") int idpagina_principal,
			@RequestParam("titulo") String titulo,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("url") String url, 			
			@RequestParam("imagen") String imagen) {
		Map<String, Object> salida = new HashMap<>();
		try {

			PaginaPrincipal pagPrincipalObj = new PaginaPrincipal();
			
			pagPrincipalObj.setIdpagina_principal(idpagina_principal);
			pagPrincipalObj.setTitulo(titulo);
			pagPrincipalObj.setDescripcion(descripcion);
			pagPrincipalObj.setUrl(url);
			pagPrincipalObj.setImagen(imagen);
			
			
			if (idpagina_principal != 0) {

				pagPrincipalService.insertaActualizaPaginaPrincipal(pagPrincipalObj);
				salida.put("MENSAJE", "La página principal se ha actualizado con éxito");
			} else if (idpagina_principal == 0) {
				pagPrincipalService.insertaActualizaPaginaPrincipal(pagPrincipalObj);
				salida.put("MENSAJE", "La página principal se ha registrado con éxito");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error en la actualización");
		} finally {
			List<PaginaPrincipal> lista = pagPrincipalService.listaPaginaPrincipal();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	
	@ResponseBody
	@RequestMapping("eliminaPaginaPrincipal")
	public Map<String, Object> elimina(int id){
		Map<String, Object> salida=new HashMap<String, Object>();
		
		try {
			Optional<PaginaPrincipal> opt= pagPrincipalService.obtenerPorId(id);
			if(opt.isPresent()) {
				pagPrincipalService.eliminaPaginaPrincipal(id);
				salida.put("mensaje", "Eliminación Exitosa");
				
			}
			else {
				salida.put("mensaje", "Eliminación Errónea");
			}
				
		} 		
		catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", "Se generó un error");
		}
		finally {
			List<PaginaPrincipal> lista=pagPrincipalService.listaPaginaPrincipal();
			salida.put("lista", lista);	
		}
			
		return salida;
	}
	

}
