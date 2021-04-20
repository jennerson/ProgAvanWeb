package br.com.unipe.jennerson.model;

public class Moeda {
	
	private float valor;

	public Moeda() {
	}

	public Moeda(float valor) {
		super();
		this.valor = valor;
	}

	public float getValor() {
		return valor;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}
	
	public double Converter() {
		return (this.valor * 5.55);
	}
	
}
