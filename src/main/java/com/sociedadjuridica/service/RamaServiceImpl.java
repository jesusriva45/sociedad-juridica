package com.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Rama;
import com.sociedadjuridica.repository.RamaRepository;

@Service
public class RamaServiceImpl implements RamaService {
	
	@Autowired
	private RamaRepository ramaRepository;

	@Override
	public List<Rama> listaRamas() {
		return ramaRepository.findAll();
	}

}
