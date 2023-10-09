package br.itb.projeto.techzoom.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.itb.projeto.techzoom.model.entity.Comentarios;

@Repository
public interface ComentariosRepository 
extends JpaRepository<Comentarios, Long> {
}	
