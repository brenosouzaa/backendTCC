package br.itb.projeto.techzoom.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="COMENTARIOS")
public class Comentarios {

	@Id
	@GeneratedValue
	private long id;
	private String nome_prod;
	private String nome_usuario;
	private String avaliaçao;
	private String descriçao;
	
	public void setId(long id) {
		this.id = id;
	}
	public String getNome_prod() {
		return nome_prod;
	}
	public void setNome_prod(String nome_prod) {
		this.nome_prod = nome_prod;
		
	}
	public String getNome_usuario() {
		return nome_prod;
	}
	public void setNome_usuario(String nome_usuario) {
		this.nome_usuario = nome_usuario;
	}
	public String getAvaliaçao() {
		return avaliaçao;
	}
	public void setAvaliaçao(String avaliaçao) {
		this.avaliaçao = avaliaçao;
	}
	public String getDescriçao() {
		return descriçao;
	}
	public void setDescriçao(String descriçao) {
		this.descriçao = descriçao;
	}
}
