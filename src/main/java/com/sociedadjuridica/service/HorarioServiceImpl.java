package com.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Horario;
import com.sociedadjuridica.repository.HorarioRepository;

@Service
public class HorarioServiceImpl implements HorarioService{
	
	@Autowired
	private HorarioRepository horarioRepository;

	@Override
	public List<Horario> listaHorario() {
		return horarioRepository.findAll();
	}
	

}
