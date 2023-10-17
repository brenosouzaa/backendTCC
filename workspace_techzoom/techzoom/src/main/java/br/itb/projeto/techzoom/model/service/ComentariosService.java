package br.itb.projeto.techzoom.model.service;

import org.springframework.stereotype.Service;

import br.itb.projeto.techzoom.model.repository.ComentariosRepository;

@Service
public class ComentariosService {

	private ComentariosRepository comentariosRepository;

	public ComentariosService(ComentariosRepository comentariosRepository) {
		super();
		this.comentariosRepository = comentariosRepository;
	}
}

