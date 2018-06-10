package poo;

public class Carro {
	
	private int ruedas, ancho, largo, peso, motor;
	private String color;
	
	public Carro() {
		
		ruedas=4;
		ancho=300;
		largo=2000;
		motor=2000;
		peso=700;
	}
	
	public String getRuedas() {
		return "El carro tiene "+ruedas+"ruedas";
	}
	
	public void setColor(String colorCarro){
		color=colorCarro;
	}
	
	
	public String getColor() {
		return "el color del carro es "+color;
	}

}
