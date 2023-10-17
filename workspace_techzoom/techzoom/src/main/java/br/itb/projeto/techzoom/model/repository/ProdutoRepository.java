package br.itb.projeto.techzoom.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.itb.projeto.techzoom.model.entity.Produto;

@Repository
public interface ProdutoRepository 
extends JpaRepository<Produto, Long> {
	
	
	List<Produto> findByNomeContaining(String nome);
	
//	@Query("SELECT p FROM Produto p WHERE p.nome_prod like %?1%")
//	List<Produto> listarProdutosFiltro(@Param("nome_prod") String nome);
//	
}
