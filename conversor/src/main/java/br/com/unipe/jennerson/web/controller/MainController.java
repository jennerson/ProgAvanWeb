package br.com.unipe.jennerson.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.unipe.jennerson.dao.MoedaDAO;
import br.com.unipe.jennerson.model.Moeda;

@Controller
public class MainController {
	
	@Autowired
	private MoedaDAO dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView conversor(){
		ModelAndView view = new ModelAndView("client");
		return view;
	}
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public ModelAndView get(Model model){
		model.addAttribute("moeda", new Moeda());
		return new ModelAndView("main");
	}
	
	
	@PostMapping(value = "/get")
	public ModelAndView cadastrarMoeda(@ModelAttribute Moeda moeda) {
		
		dao = new MoedaDAO();
		dao.Salvar(moeda);
		
		ModelAndView view = new ModelAndView("main");
		view.addObject("converteEuro", " Valor em Euro: " + moeda.ConverterEuro());
		view.addObject("converteIene", " Valor em Iene: " + moeda.ConverterIene());
		
		return view;
	}
}
