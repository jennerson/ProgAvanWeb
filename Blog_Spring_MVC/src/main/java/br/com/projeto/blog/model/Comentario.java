package br.com.projeto.blog.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "comentarios")
public class Comentario implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(nullable = false, length = 600)
	private String comentario;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="post_id", referencedColumnName="id")
	private Postagem post;
	
	
	public Comentario(String comentario, Postagem post) {
		super();
		this.comentario = comentario;
		this.post = post;
	}

	public Comentario(Long id, String comentario, Postagem post) {
		super();
		this.id = id;
		this.comentario = comentario;
		this.post = post;
	}

	public Comentario(){}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public Postagem getPost() {
		return post;
	}

	public void setPost(Postagem post) {
		this.post = post;
	}
	
}
