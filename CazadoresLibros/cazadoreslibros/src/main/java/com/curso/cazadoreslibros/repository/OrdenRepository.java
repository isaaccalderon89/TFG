package com.curso.cazadoreslibros.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.curso.cazadoreslibros.model.Orden;
@Repository
public interface OrdenRepository extends JpaRepository<Orden, Integer>  {

}
