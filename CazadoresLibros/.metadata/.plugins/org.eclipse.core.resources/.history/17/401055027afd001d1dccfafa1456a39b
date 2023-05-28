package com.curso.cazadoreslibros.controller;

import java.io.IOException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.curso.cazadoreslibros.model.Libro;
import com.curso.cazadoreslibros.model.Usuario;
import com.curso.cazadoreslibros.service.LibroService;
import com.curso.cazadoreslibros.service.UploadFileService;

@Controller
@RequestMapping("/libros")
public class LibroController {

	@Autowired
	private LibroService libroService;

	@Autowired
	private UploadFileService upload;

	@GetMapping("")
	public String Show(Model model) {
		model.addAttribute("libros", libroService.findAll());
		return "libros/show";
	}

	@GetMapping("/create")
	public String create() {
		return "libros/create";
	}

	@PostMapping("/save")
	public String save(Libro libro, @RequestParam("img") MultipartFile file) throws IOException {
		System.out.println("*** PROBANDO EL METODO SAVE ***");
		Usuario u = new Usuario(1, "", "", "", "", "", "", "");
		libro.setUsuario(u);

		// imagen
		if (libro.getId() == null) {// Cuando se cre un libro
			String nombreImagen = upload.saveImage(file);
			libro.setImagen(nombreImagen);
		} else {

		}

		libroService.save(libro);
		return "redirect:/libros";
	}

	@GetMapping("/edit/{id}")
	public String edit(@PathVariable Integer id, Model model) {
		Libro libro = new Libro();
		Optional<Libro> optionalLibro = libroService.get(id);
		libro = optionalLibro.get();
		System.out.println("*** PROBANDO EL METODO EDIT ***");
		model.addAttribute("libro", libro);

		return "libros/edit";
	}

	@PostMapping("/update")
	public String update(Libro libro, @RequestParam("img") MultipartFile file) throws IOException {
		Libro l = new Libro();
		l = libroService.get(libro.getId()).get();
		
		if (file.isEmpty()) {

			libro.setImagen(l.getImagen());
		} else {

			if (!l.getImagen().equals("default.jpg")) {
				upload.deleteImage(l.getImagen());

			}
			String nombreImagen = upload.saveImage(file);
			libro.setImagen(nombreImagen);
		}
		libro.setUsuario(l.getUsuario());
		libroService.update(libro);
		return "redirect:/libros";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		Libro l = new Libro();
		l = libroService.get(id).get();

		// eliminar cuando no sea la imagen por defecto
		if (!l.getImagen().equals("default.jpg")) {
			upload.deleteImage(l.getImagen());

		}
		libroService.delete(id);
		return "redirect:/libros";
	}

}
