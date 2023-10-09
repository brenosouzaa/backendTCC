package br.itb.projeto.techzoom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api")
public class PageController {

	String nome = "Yasmin";
	
	@GetMapping("/index")
	public String index(Model model) {
		
		model.addAttribute("nome" , nome);
		return "index";
		
	}
	
	@GetMapping("/tela_de_cadastro")
	public String tela_de_cadastro(Model model) {
		return "tela_de_cadastro";
		
	}

}
	
