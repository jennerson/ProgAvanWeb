package br.com.unipe.jennerson.dao;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.unipe.jennerson.model.Moeda;

@Repository
public class MoedaDAO {
	
	private static List<Moeda> moedas;
	
	public MoedaDAO() {
		moedas = new LinkedList<Moeda>();
	}
	
	public void Salvar(Moeda moeda) {
		moedas.add(moeda);
	}
	
	public List<Moeda> getAll(){
	return moedas;
	}
	
}
