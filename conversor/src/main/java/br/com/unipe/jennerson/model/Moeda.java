package br.com.unipe.jennerson.model;

public class Moeda {
	
	private float valorI;
	private float valorE;

	public Moeda() {
	}
	
	public Moeda(float valorI, float valorE) {
		super();
		this.valorI = valorI;
		this.valorE = valorE;
	}

	public float getValorI() {
		return valorI;
	}

	public void setValorI(float valorI) {
		this.valorI = valorI;
	}

	public float getValorE() {
		return valorE;
	}

	public void setValorE(float valorE) {
		this.valorE = valorE;
	}

	public double ConverterIene() {
		return (this.valorE * 131.44);
	}
	
	public double ConverterEuro() {
		return (this.valorI * 0.0076);
	}
}
