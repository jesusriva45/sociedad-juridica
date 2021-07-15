package com.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sociedadjuridica.entidad.PaginaPrincipal;
import com.sociedadjuridica.repository.PaginaPrincipalRepository;

@Service
public class PaginaPrincipalServiceImpl implements PaginaPrincipalService{

	@Autowired 
	PaginaPrincipalRepository pagPrincipalRepositorio;
	
	@Override
	public List<PaginaPrincipal> listaPaginaPrincipal() {
		// TODO Auto-generated method stub
		return pagPrincipalRepositorio.findAll();
	}

	@Override
	public PaginaPrincipal insertaActualizaPaginaPrincipal(PaginaPrincipal obj) {
		// TODO Auto-generated method stub
		return pagPrincipalRepositorio.save(obj);
	}

	@Override
	public void eliminaPaginaPrincipal(int id) {
		// TODO Auto-generated method stub
		pagPrincipalRepositorio.deleteById(id);
	}

	@Override
	public Optional<PaginaPrincipal> obtenerPorId(int id) {
		// TODO Auto-generated method stub
		return pagPrincipalRepositorio.findById(id);
	}

}
