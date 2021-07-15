package com.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Cargo;
import com.sociedadjuridica.repository.CargoRepository;


@Service
public class CargoServiceImpl implements CargoService{

	
	@Autowired
	private CargoRepository cargoRepository;
	
	@Override
	public List<Cargo> listaCargo() {
		// TODO Auto-generated method stub
		return cargoRepository.findAll();
	}

	
	
	
}
