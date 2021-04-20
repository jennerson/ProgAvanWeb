package br.com.unipe.jennerson.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.unipe.jennerson.model.Moeda;

@Controller
public class MainController {
	
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
	
	@RequestMapping(value = "/get", method = RequestMethod.POST)
	public ModelAndView calcula(@ModelAttribute Moeda moeda) {
		ModelAndView view = new ModelAndView("main");
		
		view.addObject("mensagem", " Valor em Real: R$ " + moeda.Converter());
		
		return view;
	}
}
