
public class Declaracion_Operaciones {

	public static void main(String[] args) {
		
		double a=5, b=7;
		double c=b/a;
		int d;
		System.out.println("La vida es muy " +a+ " sin embargo muy corta "+ b);
		
		a=49;
		c=Math.sqrt(a);
		System.out.println(c);
		d=(int)Math.sqrt(a); //para que no saque error pongo el (int) para indicar que estoy esperando un entero devuleta y no un flotante
		System.out.println(d);
		
		String nombre="Pablo";
		System.out.println(nombre);
		
		System.out.println("mi nombre tiene "+nombre.length()+" letras xD xD");// devuelve longitud cadena de caracteres
		nombre.charAt(2);//devuelve la letra en la posici�n 2 de la cadena de caracteres mi_nombre
		/*nombre.substring();//dos par�metros. Es para extraer una parte de la cadena de caracteres, el primer n�mero dice a partir de cual posici�n extraer y el sgundo hasta cu�l posicion quieor extraer
		nombre.equals(segundo_nombre);//compara dos cadenas de caracteres para ver si son o no iguales
		*/
		
		int ult_letra=nombre.length()-1;
		System.out.println("La primera letra de mi nombre es "+nombre.charAt(0));
		System.out.println("la �ltima letra de mi nombre es la "+nombre.charAt(ult_letra));
		
		String frase="Hab�a una vez un barco chiquito buahahahha";
		String resumen=frase.substring(5,20);
		System.out.println(resumen);
		System.out.println(frase.equals(resumen));
		
		String prueba1="hola", prueba2="HOLA";
		System.out.println(prueba1.equalsIgnoreCase(prueba2));
		
		
	}

}
