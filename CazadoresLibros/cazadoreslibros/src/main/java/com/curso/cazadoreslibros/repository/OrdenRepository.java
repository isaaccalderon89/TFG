package com.curso.cazadoreslibros.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.curso.cazadoreslibros.model.Orden;
import com.curso.cazadoreslibros.model.Usuario;
@Repository
public interface OrdenRepository extends JpaRepository<Orden, Integer>  {
	
	List<Orden> findByUsuario (Usuario usuario);
	
}
