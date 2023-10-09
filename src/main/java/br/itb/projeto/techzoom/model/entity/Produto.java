package br.itb.projeto.techzoom.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PRODUTO")
public class Produto {

	@Id
	@GeneratedValue
	private long id;
	private String nome_prod;
	private String categoria_id;
	private String descricao;
	private String comentario;
	
	public void setId(long id) {
		this.id = id;
	}
	public String getNome_prod() {
		return nome_prod;
	}
	public void setNome_prod(String nome_prod) {
		this.nome_prod = nome_prod;
	}
	public String getCategoria_id() {
		return categoria_id;
	}
	public void setCategoria_id(String categoria_id) {
		this.categoria_id = categoria_id;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;		
	}
	public String getDescricao() {
		return descricao;
	}
	private void setComentario(String cometario) {
		this.comentario = comentario;
	}
	public String getComentario() {
		return comentario;
	}
	public long getId() {
		return id;
	}
}


