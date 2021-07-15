package com.sociedadjuridica.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sociedadjuridica.entidad.Revistas;
import com.sociedadjuridica.service.RevistaService;

@Controller
public class RevistaController {
	
	@Autowired
	private RevistaService revistaService;
	
	@ResponseBody
	@RequestMapping("/listaRevistas")
	public List<Revistas> listaRevistas(){
		return revistaService.listaRevistas();
	}
	
	
	@ResponseBody
	@RequestMapping("/consultaCrudRevistas")
	public List<Revistas> lista(String filtro){
		return revistaService.listaRevistasPorNombre(filtro.trim() + "%");
	}
	
	
	//registrar
	@ResponseBody
	@PostMapping(value = "/registraCrudRevista")
	public Map<String, Object> registrar(@RequestParam("titulo") String titulo,
										 @RequestParam("descripcion") String descripcion,
										 @RequestParam("precioPresencial") double precioPre,
										 @RequestParam("precioVirtual") double precioVir,
										 @RequestParam("autor") String autor,
										 @RequestParam("foto") String foto){
		Map<String, Object> salida=new HashMap<>();
		
		try {
			
			Revistas obj =new Revistas();
			obj.setTitulo(titulo);
			obj.setDescripcion(descripcion);
			obj.setPrecioPresencial(precioPre);
			obj.setPrecioVirtual(precioVir);
			obj.setAutor(autor);
			obj.setFoto(foto);
			
			
			Revistas objSalida = revistaService.insertaActualizaRevistas(obj);
			if(objSalida==null) {
				salida.put("mensaje", "Error en el Registro");
			}
			else {
				salida.put("mensaje", "Registro exitoso");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", "Se genero un error");
		}
		finally {
			List<Revistas> lista=revistaService.listaRevistas();
			salida.put("lista",lista);
		}
		return salida;
	}
	
	
	
	//actualizar
//	@ResponseBody
//	@RequestMapping("/actualizaCrudRevista")
//	public Map<String, Object> actualizar(Revistas obj){
//		Map<String, Object> salida=new HashMap<>();
//		
//		try {
//			
//			Revistas objSalida = revistaService.insertaActualizaRevistas(obj);
//			
//			if(objSalida==null) {
//				salida.put("mensaje", "Error al Actualizar");
//			}
//			else {
//				salida.put("mensaje", "Se Actualizó correctamente");
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			salida.put("mensaje", "Se genero un error");
//		}
//		finally {
//			List<Revistas> lista=revistaService.listaRevistas();
//			salida.put("lista",lista);
//		}
//		return salida;
//	}

	
	
	//ACTUALIZAR
	@ResponseBody
	@PostMapping(value = "/actualizaCrudRevista")
	public Map<String, Object> actualizar(@RequestParam("idRevistas") String id,
										 @RequestParam("titulo") String titulo,
										 @RequestParam("descripcion") String descripcion,
										 @RequestParam("precioPresencial") double precioPre,
										 @RequestParam("precioVirtual") double precioVir,
										 @RequestParam("autor") String autor,
										 @RequestParam("foto") String foto){
		Map<String, Object> salida=new HashMap<>();
		
		try {
			
			Revistas obj =new Revistas();
			obj.setIdRevistas(Integer.parseInt(id));
			obj.setTitulo(titulo);
			obj.setDescripcion(descripcion);
			obj.setPrecioPresencial(precioPre);
			obj.setPrecioVirtual(precioVir);
			obj.setAutor(autor);
			obj.setFoto(foto);
			
			
			Revistas objSalida = revistaService.insertaActualizaRevistas(obj);
			if(objSalida==null) {
				salida.put("mensaje", "Error al Actualizar");
			}
			else {
				salida.put("mensaje", "Actualización exitosa");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", "Se genero un error");
		}
		finally {
			List<Revistas> lista=revistaService.listaRevistas();
			salida.put("lista",lista);
		}
		return salida;
	}
	
	
	
	
	@ResponseBody
	@RequestMapping("eliminaCrudRevista")
	public Map<String, Object> elimina(int id){
		Map<String, Object> salida=new HashMap<String, Object>();
		
		try {
			Optional<Revistas> opt= revistaService.obtenerPorId(id);
			if(opt.isPresent()) {
				revistaService.eliminaRevista(id);
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
			List<Revistas> lista=revistaService.listaRevistas();
			salida.put("lista", lista);	
		}
			
		return salida;
	}
	
	
	
	

}








