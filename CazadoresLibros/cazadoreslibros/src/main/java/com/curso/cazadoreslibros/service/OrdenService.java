package com.curso.cazadoreslibros.service;

import java.util.List;
import java.util.Optional;

import com.curso.cazadoreslibros.model.Orden;
import com.curso.cazadoreslibros.model.Usuario;

public interface OrdenService {
	
	Optional<Orden> findById(Integer id);
	List<Orden> findAll();
	Orden save(Orden orden);
	String genNumOrden();
	List<Orden> findByUsuario (Usuario usuario);

}
