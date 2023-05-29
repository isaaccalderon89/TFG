package com.curso.cazadoreslibros.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.curso.cazadoreslibros.model.Libro;
import com.curso.cazadoreslibros.service.LibroService;

@Controller
@RequestMapping("/administrador")
public class AdministradorController {
	
	@Autowired
	private LibroService libroService;
	
	@GetMapping("")
	public String home(Model model) {
		List<Libro> libros=libroService.findAll();
		model.addAttribute("libros", libros);
		return "administrador/home";
	}

}
