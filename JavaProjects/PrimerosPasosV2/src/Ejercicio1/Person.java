package Ejercicio1;

public class Person {

    private String name;
    private int age;
    private int id;
    private double weight;
    private double height;
    private char sex;

    public Person(int id){
        name="";
        sex='H';
        age=0;
        this.id=id;
        weight=0.0;
        height=0.0;
    }

    public Person(String name, int age, char sex,int id){
        this.name=name;
        this.age=age;
        this.id=id;
        weight=0.0;
        height=0.0;
        if (sex!='H'&& sex!='M'){
            this.sex='M';
        }
    }

    public Person(String name, int age, char sex,int id, double weight, double height){
        this.name=name;
        this.age=age;
        this.id=id;
        this.weight=weight;
        this.height=height;
        if (sex!='H'&& sex!='M'){
            this.sex='M';
        }
    }

    public int calcularIMC(){
        double imc=weight/Math.pow(height,2);
        if (imc<20){ return -1;}
        else if (imc>=20 && imc<=25){ return 0; }
        else if(imc>25){
//
            return 1;}
        else {
//            System.out.println("No hay datos del empleado "+name);
            return 2;}
    }

    public boolean esMayorDeEdad(){
        if (age<18){
            return false;}
        else {
            return true;}
    }

    public void setName(String name){this.name=name;}
    public void setAge(int age){this.age=age;}
    public void setId(int id){this.id=id;}
    public void setWeight(double weight){this.weight=weight;}
    public void setHeight(double height){this.height=height;}
    public void setSex(char sex){this.sex=sex;}

    public String getName() { return name; }

    public String toString(){
        String msj="Nombre: "+name+". Edad: "+age+". Sexo: "+sex+". ID:"+id+". Peso: "+weight+". Estatura: "+height;
        return msj;
    }

}
