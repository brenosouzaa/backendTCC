package br.itb.projeto.techzoom.model.service;

import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import br.itb.projeto.techzoom.model.entity.Produto;
import br.itb.projeto.techzoom.model.repository.ProdutoRepository;

@Service
public class ProdutoService {
	
	private ProdutoRepository produtoRepository;

	public ProdutoService(ProdutoRepository ProdutoRepository) {
		super();
		this.produtoRepository = produtoRepository;
	}

	@Transactional
	public Produto save(Produto produto) {
		return produtoRepository.save(produto);
	}
	
	@Transactional
	public Produto gravarNovoProd(MultipartFile file, Produto produto) {

		if (file != null && file.getSize() > 0) {
			try {
				produto.setFoto(file.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			produto.setFoto(null);
		}

//		if (produto.get() == null) {
//			produto.setDestaque("NÃO");
//		}
//		produto.setStatusProd("ATIVO");

		return produtoRepository.save(produto);
	}
	
	@Transactional
	public void atualizarProd(MultipartFile file, Produto _produto, byte[] foto) {
//
//		Produto _produto = produto;
//
//		TpProduto tpproduto = tpprodutoRepository.findByTpProduto(produto.getTpProduto().getTpProduto());

//		System.out.println("fi" + file.getSize());
//		System.out.println("fo" + foto.length);

		if (file.getSize() == 0 && foto.length == 0) {
			_produto.setFoto(null);
		}

		if (file.getSize() == 0 && foto.length > 0) {
			_produto.setFoto(foto);
		}

		if (file != null && file.getSize() > 0) {
			try {
				_produto.setFoto(file.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
//
//		if (_produto.getDestaque() == null) {
//			_produto.setDestaque("NÃO");
//		}
//
//		// _produto.setTpProduto(tpproduto);
//		_produto.setStatusProd("ATIVO");
		produtoRepository.save(_produto);
	}
	
	public List<Produto> findAll() {
		return produtoRepository.findAll();
	}
	
	public Produto findById(long id) {
		return produtoRepository.findById(id).get();
	}
	
	public List<Produto> listarTodosFiltro(String nome_prod) {
		return produtoRepository.findByNomeContaining(nome_prod);
	
	
	}

	

}

