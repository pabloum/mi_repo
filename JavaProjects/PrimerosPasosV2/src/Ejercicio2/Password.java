package Ejercicio2;
import javax.swing.JOptionPane;

public class Password {

    public static void main(String[] args){

        // Crear array de Passwords con el tamaño que tu le indiques por teclado.
        int array=Integer.parseInt(JOptionPane.showInputDialog("Introduce the array's size"));
        int length=Integer.parseInt(JOptionPane.showInputDialog("Introduce the length of the passwords"));

        Pass listPasswords[] = new Pass[array];
        boolean passStrength[] = new boolean[length];

        // Crea un bucle que cree un objeto para cada posición del array.
        for (int i=0;i<array;i++){
            listPasswords[i]=new Pass(length);
            passStrength[i]=listPasswords[i].esFuerte();
            System.out.println("The password is "+listPasswords[i].getPassword()+" and its strength is "+passStrength[i]);
        }
    }
}
