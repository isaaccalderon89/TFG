package com.curso.cazadoreslibros.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.curso.cazadoreslibros.model.Orden;
import com.curso.cazadoreslibros.repository.OrdenRepository;

@Service
public class OrdenServiceImpl implements OrdenService {
	
	@Autowired
	private OrdenRepository ordenRepository;

	@Override
	public Orden save(Orden orden) {
		return ordenRepository.save(orden);
	}

}
