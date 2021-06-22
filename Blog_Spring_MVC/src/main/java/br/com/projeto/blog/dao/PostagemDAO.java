package br.com.projeto.blog.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Repository;

import br.com.projeto.blog.model.Comentario;
import br.com.projeto.blog.model.Postagem;

@Repository
public class PostagemDAO {

	@PersistenceContext
	private EntityManager entityManager;
	
	
	public PostagemDAO() {
	}
	
	@Transactional(readOnly = false)
	public void salvar(Postagem postagem) {
		entityManager.persist(postagem);
	}
	
	@Transactional(readOnly = true)
	public Postagem getId(Long id) {
		return entityManager.find(Postagem.class, id);
	}
	
	@Transactional(readOnly = true)
	public List<Postagem> getAll(){ 
		String jpql = "from Postagem u";
		TypedQuery<Postagem> consulta = entityManager.createQuery(jpql, Postagem.class);
		
		return consulta.getResultList();
	}
	
	@Transactional(readOnly = false)
	public void excluir(Postagem postagem) {
		entityManager.remove(postagem);
	}

	@Transactional(readOnly = false)
	public void editar(Postagem postagem) {
		entityManager.merge(postagem);
	}
}
