
import java.util.*; //habilitar otro paquete que no est� por defecto. El * quiere decir que todas las clases del paquete

import javax.swing.JOptionPane;
public class MeineZweiteProgramme {

	public static void main(String[] args) {
	/*	
	Scanner entrada=new Scanner(System.in);; // es din�mico entonces toca crear un objeto. 
	
	System.out.println("Introduce tu nombre");
	String nombre=entrada.nextLine();
	
	System.out.println("Introduce tu edad");
	int edad=entrada.nextInt();
	
	System.out.println("Hola, tu nombre es "+nombre+" y tu edad el a�o entrante ser� "+(edad+1));
	*/
	String Name=JOptionPane.showInputDialog("Your name please");
	
	String age=JOptionPane.showInputDialog("Your age please");
	int edad=Integer.parseInt(age); //pasa de string a entero
	
	System.out.println("Hallo, dein Name ist "+Name+" and your age is "+(edad-2));

	String num=JOptionPane.showInputDialog("A number to get the square root from, please");
	double num_=Double.parseDouble((num));
	System.out.printf("%1.5f",Math.sqrt(num_));
	
	if (num_<30) {
		System.out.println("\n el resultado es es menor que 30");
	}
	else {
		System.out.println("\\n el resultado es mayor que 30");
	}
	
	}

}
