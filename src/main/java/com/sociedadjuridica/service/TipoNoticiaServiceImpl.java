package com.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.TipoNoticias;
import com.sociedadjuridica.repository.TipoNoticiaRepository;

@Service
public class TipoNoticiaServiceImpl implements TipoNoticiaService {

	
	@Autowired
	private TipoNoticiaRepository tipoNoticiaRepository;
	
	@Override
	public List<TipoNoticias> listaTipoNoticia() {
		// TODO Auto-generated method stub
		return tipoNoticiaRepository.findAll();
	}
	
	

}
