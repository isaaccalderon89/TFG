package com.curso.cazadoreslibros.service;

import java.util.List;
import java.util.Optional;

import com.curso.cazadoreslibros.model.Libro;

public interface LibroService {
	
	public Libro save(Libro libro);
	public Optional<Libro> get(Integer id);
	public void update(Libro libro);
	public void delete(Integer id);
	public List<Libro> findAll();

}
