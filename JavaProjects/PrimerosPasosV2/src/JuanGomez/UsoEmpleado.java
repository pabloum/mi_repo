package JuanGomez;

import java.util.Date;
import java.util.GregorianCalendar;

public class UsoEmpleado {

    public static void main(String[] args){

        Empleado[] misEmpleados=new Empleado[3];

        misEmpleados[0]=new Empleado("Pablo Uribe",3000,1994,01,27);
        misEmpleados[1]=new Empleado("Ana Álvarez",2500,1993,9,24);
        misEmpleados[2]=new Empleado("Tato Uribe",2000,1997,10,10);

        // for mejorado
        for(Empleado posicion: misEmpleados){
            posicion.subeSueldo(5);
        }

        for (Empleado pos: misEmpleados){
            System.out.println("Nombre: "+pos.getName()+" Sueldo:"+pos.getSalary()+ "Fecha de Alta: "+pos.getContractDate());
        }

    }
}

class Empleado {

    private String nombre;
    private double sueldo;
    private Date altaContrato;

    public Empleado(String nom, double sue, int anio, int mes, int dia) {
        nombre = nom;
        sueldo = sue;
        GregorianCalendar calendario = new GregorianCalendar(anio, mes - 1, dia);
        altaContrato = calendario.getTime();
    }

    public String getName(){
        return nombre;
    }

    public double getSalary(){
        return sueldo;
    }

    public Date getContractDate(){
        return altaContrato;
    }

    public void subeSueldo(double porcentaje) {
        double aumento = sueldo * porcentaje / 100;
        sueldo += aumento;
    }
}


