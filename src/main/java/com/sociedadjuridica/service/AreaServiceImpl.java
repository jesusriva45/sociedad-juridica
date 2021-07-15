package com.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.Area;
import com.sociedadjuridica.repository.AreaRepository;

@Service
public class AreaServiceImpl implements AreaService{

	
	@Autowired
	private AreaRepository areaRpository;

	@Override
	public List<Area> listaArea() {
		// TODO Auto-generated method stub
		return areaRpository.findAll();
	}
	
	
	
}
