package com.curso.cazadoreslibros.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.curso.cazadoreslibros.model.Libro;
import com.curso.cazadoreslibros.model.Orden;
import com.curso.cazadoreslibros.service.LibroService;
import com.curso.cazadoreslibros.service.OrdenService;
import com.curso.cazadoreslibros.service.UsuarioService;

@Controller
@RequestMapping("/administrador")
public class AdministradorController {
	
	@Autowired
	private LibroService libroService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private OrdenService ordenService;
	
	@GetMapping("")
	public String home(Model model) {
		List<Libro> libros=libroService.findAll();
		model.addAttribute("libros", libros);
		return "administrador/home";
	}
	
	@GetMapping("/usuarios")
	public String usuarios(Model model){
		model.addAttribute("usuarios", usuarioService.findAll());
		return "administrador/usuarios";
	}
	
	@GetMapping("/ordenes")
	public String ordenes(Model model) {
		model.addAttribute("ordenes", ordenService.findAll());
		return "administrador/ordenes";
	}
	
	@GetMapping("/detalle/{id}")
	public String detalle(Model model,@PathVariable Integer id) {
		System.out.println("*** PROBANDO EL MÉTODO DETALLE() ***");
		Orden orden = ordenService.findById(id).get();
		model.addAttribute("detalles", orden.getDetalle());
		return "administrador/detalleorden";
		
	}

}
