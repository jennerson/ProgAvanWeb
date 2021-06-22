package br.com.projeto.blog.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "postagens")
public class Postagem implements Serializable{
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(nullable = false, length = 200)
	private String titulo;
	@Column(nullable = false, length = 600)
	private String descricao;
	
	@Column(nullable = false, length = 1000)
	private String imagemUrl;
	
	@Column(nullable = false, length = 200)
	private String autor;
	
	public String getImagemUrl() {
		return imagemUrl;
	}

	public void setImagemUrl(String imagemUrl) {
		this.imagemUrl = imagemUrl;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	@OneToMany(mappedBy="post", fetch=FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Comentario>  comentarios;
  
	
	public Postagem(Long id, String titulo, String descricao, Set<Comentario> comentarios, String autor, String imagemUrl) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.comentarios = comentarios;
		this.autor = autor;
		this.imagemUrl = imagemUrl;
	}

	public Postagem() {}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Set<Comentario> getComentarios() {
		
		return comentarios;
	}

	public void setComentarios(Set<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

}
