package com.sociedadjuridica.controller;

import java.util.Date;
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

import com.sociedadjuridica.entidad.Noticias;
import com.sociedadjuridica.entidad.Rama;
import com.sociedadjuridica.entidad.Revistas;
import com.sociedadjuridica.entidad.TipoNoticias;
import com.sociedadjuridica.entidad.Usuario;
import com.sociedadjuridica.service.NoticiaService;

@Controller
public class NoticiaController {
	
	@Autowired
	private NoticiaService noticiaService;
	
	
	@ResponseBody
	@RequestMapping("/listaNoticias")
	public List<Noticias> listaNoticias(){
		return noticiaService.listaNoticias();
	}
	
	
	
	

	
	@ResponseBody
	@RequestMapping(value = "/insertaActualizaNoticiaNuevo", method = RequestMethod.POST)
	public Map<String, Object> insertaActualizaNoticiaNuevo(@RequestParam("id_noticia") int id_noticia,
			@RequestParam("titulo") String titulo, @RequestParam("url") String url, 
			@RequestParam("descripcion") String descripcion,
			@RequestParam(value = "tipoNoticia", required = false) Optional<TipoNoticias> tipoNoticia, 
			@RequestParam(value = "rama", required = false) Optional<Rama> rama,
			@RequestParam("foto") String foto) {
		Map<String, Object> salida = new HashMap<>();
		try {

			Noticias noticia = new Noticias();
			
			
			noticia.setIdNoticias(id_noticia);				
			noticia.setImagen(foto);
			
			noticia.setTipoNoticias(tipoNoticia.get());
			
			
			noticia.setDescripcion(descripcion);
			if(titulo.length() == 0) {				
				noticia.setTitulo(null);
			}else {
				noticia.setTitulo(titulo);
			}		

			if(tipoNoticia.get().getDescripcion().equals("cursos") || tipoNoticia.get().getDescripcion().equals("pagina principal")) {				
				noticia.setRama(null);
				noticia.setUrl(url);
			}else {
				
				noticia.setRama(rama.get());
				noticia.setUrl(null);
			}
			
			
			
			
			
			
			
			noticia.setFecha(new Date());
			

			if (id_noticia != 0) {

				noticiaService.insertaActualizaNoticias(noticia);
				salida.put("MENSAJE", "La noticia se ha actualizado con éxito");
			} else if (id_noticia == 0) {
				noticiaService.insertaActualizaNoticias(noticia);
				salida.put("MENSAJE", "La noticia se ha registrado con éxito");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error en la actualización");
		} finally {
			List<Noticias> lista = noticiaService.listaNoticias();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	
	@ResponseBody
	@RequestMapping("eliminaNoticia")
	public Map<String, Object> elimina(int id){
		Map<String, Object> salida=new HashMap<String, Object>();
		
		try {
			Optional<Noticias> opt= noticiaService.obtienePorId(id);
			if(opt.isPresent()) {
				noticiaService.eliminaNoticia(id);
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
			List<Noticias> lista=noticiaService.listaNoticias();
			salida.put("lista", lista);	
		}
			
		return salida;
	}
	
	
}
