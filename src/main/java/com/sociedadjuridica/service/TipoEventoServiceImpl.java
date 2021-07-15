package com.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.TipoEventos;
import com.sociedadjuridica.repository.TipoEventoRepository;


@Service
public class TipoEventoServiceImpl implements TipoEventoService{

	@Autowired
	private TipoEventoRepository tipoEventoRepository;
	
	
	@Override
	public List<TipoEventos> listaTipoEvento() {
		return tipoEventoRepository.findAll();
	}
	

}
