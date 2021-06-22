package br.com.projeto.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.projeto.blog.dao.ComentarioDAO;
import br.com.projeto.blog.dao.PostagemDAO;
import br.com.projeto.blog.model.Comentario;
import br.com.projeto.blog.model.Postagem;

@Controller
@RequestMapping("/posts/**")
public class HomeController {

	@Autowired
	private PostagemDAO dao;
	@Autowired
	private ComentarioDAO comentarioDAO;

	public HomeController() {
		dao = new PostagemDAO();
		comentarioDAO = new ComentarioDAO();
	}

	@RequestMapping(value = "/postagens/{id}", method = RequestMethod.GET)
	public String show(@PathVariable Long id, ModelMap modelMap) {
		modelMap.addAttribute("postagem", dao.getId(id));
		modelMap.addAttribute("comentarios", comentarioDAO.findAllFromPost(id));
		modelMap.addAttribute("comentario", new Comentario());
		return "posts/show";
	}

	@RequestMapping(value = "/postagens", method = RequestMethod.GET)
	public String list(ModelMap modelMap) {
		modelMap.addAttribute("postagens", dao.getAll());
		return "posts/list";
	}

	@RequestMapping(value = "/comentarios/excluir/{id}", method = RequestMethod.POST)
	public String delete(@PathVariable("id") Long id, ModelMap model) {
		
		Long postId = comentarioDAO.getPostIdByCommentId(id);
		model.addAttribute("comentario", comentarioDAO.getId(id));
		comentarioDAO.excluir(id);

		return "redirect:../posts/postagens/" + postId;
	}
	
	@RequestMapping(value = "/comentarios/editar/{id}", method = RequestMethod.POST)
	public String edit(@PathVariable("id") Long id, ModelMap model) {

		model.addAttribute("comentario", comentarioDAO.getId(id));
		
		return "posts/editar";
	}
	

	@RequestMapping(value = "/comentarios/atualizar/{id}", method = RequestMethod.POST)
	public String editarForm(Comentario comentario, @PathVariable Long id) {
		
		Long postId = comentarioDAO.getPostIdByCommentId(id);
		
		comentario.setPost(dao.getId(postId));
		
		comentarioDAO.editar(comentario);
		
		return "redirect:../posts/postagens/" + postId;
	}


	@RequestMapping(value = "/postagens/form", method = RequestMethod.GET)
	public String form(ModelMap modelMap) {
		modelMap.addAttribute("postagem", new Postagem());
		return "posts/create";
	}

	@RequestMapping(value = "/posts/create", method = RequestMethod.POST)
	public String create(Postagem post) {

		dao.salvar(post);
		return "redirect:/posts/postagens";
	}

	@RequestMapping(value = "/postagens/{id}/form", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, ModelMap modelMap) {
		modelMap.addAttribute("post", dao.getId(id));
		return "posts/update";
	}

	@RequestMapping(value = "/postagens/{id}", method = RequestMethod.POST)
	public String createComment(Comentario comentario, @PathVariable("id") Long id) {

		Postagem post = dao.getId(id);
		comentarioDAO.salvar(new Comentario(comentario.getComentario(), post));
		return "redirect:/posts/postagens/" + id;
	}
}
