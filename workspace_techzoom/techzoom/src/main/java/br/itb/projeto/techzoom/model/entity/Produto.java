package br.itb.projeto.techzoom.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PRODUTO")
public class Produto {

	@Id
	@GeneratedValue
	@Column(name="ID_PROD")
	private long id;
	@Column(name="NOME_PROD")
	private String nome;
	private byte[] foto;
	@Column(name="CATEGORIA_ID")
	private String categoria_id;


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

	public String getCategoria_id() {
		return categoria_id;
	}

	public void setCategoria_id(String categoria_id) {
		this.categoria_id = categoria_id;
	}



}


