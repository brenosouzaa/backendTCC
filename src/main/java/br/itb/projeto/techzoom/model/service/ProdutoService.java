package br.itb.projeto.techzoom.model.service;

import org.springframework.stereotype.Service;

import br.itb.projeto.techzoom.model.repository.ProdutoRepository;

@Service
public class ProdutoService {
	
	private ProdutoRepository produtoRepository;

	public ProdutoService(ProdutoRepository ProdutoRepository) {
		super();
		this.produtoRepository = produtoRepository;
	}
}

