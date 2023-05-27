package com.curso.cazadoreslibros.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.curso.cazadoreslibros.model.Libro;
import com.curso.cazadoreslibros.repository.LibroRepository;

@Service
public class LibroServiceImpl implements LibroService {

	@Autowired
	private LibroRepository libroRepository;

	@Override
	public Libro save(Libro libro) {
		return libroRepository.save(libro);
	}

	@Override
	public Optional<Libro> get(Integer id) {
		return libroRepository.findById(id);
	}

	@Override
	public void update(Libro libro) {
		libroRepository.save(libro);

	}

	@Override
	public void delete(Integer id) {
		libroRepository.deleteById(id);

	}

	@Override
	public List<Libro> findAll() {
		return libroRepository.findAll();
	}

}
