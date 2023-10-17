package br.itb.projeto.techzoom.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.itb.projeto.techzoom.model.entity.Usuario;
import br.itb.projeto.techzoom.model.service.UsuarioService;

@Controller
@RequestMapping("/api/usuario")
public class UsuarioController {
	
	private UsuarioService usuarioService;

	public UsuarioController(UsuarioService usuarioService) {
		super();
		this.usuarioService = usuarioService;
	}
	@GetMapping("/todos")
	public String getAll(ModelMap model) {
		
		List<Usuario> usuarios = usuarioService.findAll();
		
		model.addAttribute("usuarios", usuarios);
		
		return "usuarios";
	}
	
	private String serverMessage = null;
	
	@GetMapping("/login")
	public String getLogin(ModelMap model) {
		
		model.addAttribute("usuario", new Usuario());
		model.addAttribute("serverMessage", serverMessage);
		
		return "login";
	}
	
	@GetMapping("/home")
	public String getHome(ModelMap model) {
		return "telahome";
	}
	

	
	@PostMapping("/acessar")
	public String acessar(
			@RequestParam("email") String email, 
			@RequestParam("senha") String senha, 
			HttpSession session, ModelMap model) {
		
		Usuario usuario = usuarioService.acessar(email, senha);
		
		System.out.println("1");
		
		if (usuario != null) {
			
			serverMessage = null;
			session.setAttribute("usuario", usuario);
			System.out.println("2");
			
			if (usuario.getNivelAcesso().equals("ADM")) {
				System.out.println("3");
				return "redirect:/api/usuario/home";

			} else {
				serverMessage = "Dados Incorretos!";
				model.addAttribute("serverMessage", serverMessage);
			}
			
		} 
		System.out.println("4");
		
		serverMessage = "Dados Incorretos!";
		model.addAttribute("serverMessage", serverMessage);
		
		return "redirect:/api/usuario/login";
		
	}
}
