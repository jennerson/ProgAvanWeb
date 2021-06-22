package br.com.projeto.blog.dao;

import java.util.List;
import java.util.Set;

import javax.persistence.*;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.projeto.blog.model.Comentario;
import br.com.projeto.blog.model.Postagem;

@Repository
public class ComentarioDAO {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public ComentarioDAO() {}
	
	
	@Transactional(readOnly = false)
	public void salvar(Comentario comentario) {
		entityManager.persist(comentario);
	}
	
	@Transactional(readOnly = true)
	public Comentario getId(Long id) {
		return entityManager.find(Comentario.class, id);
	}
	
	@Transactional(readOnly = false)
	public void excluir(Long id) {
		Comentario comentario = getId(id);
		entityManager.remove(comentario);
	}
		
	@Transactional(readOnly = false)
	public void editar(Comentario comentario) {
		entityManager.merge(comentario);
	}
	
	@Transactional(readOnly = true)
	public List<Comentario> getAll(){ 
		String jpql = "from Comentario u";
		TypedQuery<Comentario> consulta = entityManager.createQuery(jpql, Comentario.class);
		
		return consulta.getResultList();
	}
	
	@Transactional(readOnly = true)
	public Long getPostIdByCommentId(Long commentId) {
		return entityManager.find(Comentario.class, commentId).getPost().getId();
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<Comentario> findAllFromPost(Long id) {
		
		return entityManager.createQuery("SELECT c FROM Comentario c WHERE c.post.id=:id").
			    setParameter("id", id).
			    getResultList();
	}

}
