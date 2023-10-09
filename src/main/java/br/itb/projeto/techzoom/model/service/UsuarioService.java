package br.itb.projeto.techzoom.model.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import br.itb.projeto.techzoom.model.entity.Usuario;
import br.itb.projeto.techzoom.model.repository.UsuarioRepository;

@Service
public class UsuarioService {
	
	private UsuarioRepository usuarioRepository;

	public UsuarioService(UsuarioRepository usuarioRepository) {
		super();
		this.usuarioRepository = usuarioRepository;
	}

	//java.util.List
	public 	List<Usuario> findAll(){
		return usuarioRepository.findAll();
	}
	
	@Transactional
	public Usuario acessar(String email, String senha) {
		
		Usuario usuario = usuarioRepository.findByEmail(email);
		
		if (usuario != null && usuario.getStatusUsuario().equals("ATIVO")) {
	
			if (usuario.getSenha().equals(senha)) {
				
				return usuario;
				
			}
		} 
		return null;	
	}
}

