package Ejercicio1;

public class main {

    public static void main(String[] args) {

        Person person1=new Person(1);
        Person person2=new Person("Jaimito",18,'H',195235);
        Person person3=new Person("Pablo",24,'p',195235,86.5,1.81);

        System.out.println(person1);
        System.out.println(person2);
        System.out.println(person3);

        System.out.println(" ");

        mensajeIMC(person1);
        mensajeIMC(person2);
        mensajeIMC(person3);

        System.out.println(" ");

        mensajeEdad(person1);
        mensajeEdad(person2);
        mensajeEdad(person3);

    }

    public static void mensajeIMC(Person a){
        int imc=a.calcularIMC();
        String name=a.getName();
        if(imc<20){
            System.out.println("El empleado "+name+" está debajo del peso ideal");
        }else if(imc>20&&imc<25){
            System.out.println("El empleado "+name+" está con el peso ideal");
        }else if(imc>25){
            System.out.println("El empleado "+name+" está con sobrepeso");
        }else{
            System.out.println("No hay datos de peso y/o estadtura del empleado "+name);
        }
    }

    public static void mensajeEdad(Person a){
        boolean edad=a.esMayorDeEdad();
        String name=a.getName();
        if (edad==true){
            System.out.println("El empleado "+name+" es mayor de edad");
        }else{
            System.out.println("El empleado "+name+" es menor de edad");
        }
    }

}
