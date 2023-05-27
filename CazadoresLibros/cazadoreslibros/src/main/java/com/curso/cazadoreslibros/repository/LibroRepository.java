package com.curso.cazadoreslibros.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.curso.cazadoreslibros.model.Libro;

public interface LibroRepository extends JpaRepository<Libro, Integer>{

}
