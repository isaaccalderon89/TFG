package com.curso.cazadoreslibros.service;

import java.util.List;

import com.curso.cazadoreslibros.model.Orden;

public interface OrdenService {
	
	List<Orden> findAll();
	Orden save(Orden orden);
	String genNumOrden();

}
