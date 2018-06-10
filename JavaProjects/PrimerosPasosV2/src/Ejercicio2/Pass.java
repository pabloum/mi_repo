package Ejercicio2;

import java.util.UUID;

public class Pass {

    private int length;
    private String password;

    public Pass(){
        length=8;
        password="defaultPassword";
    }

    public Pass(int length){
        this.length=length;
        password=generarPassword();
    }

    public boolean esFuerte(){

        boolean fuerte=false;
        int may=0;
        int min=0;
        int num=0;

        for (int i=0;i<password.length();i++){
            if(password.charAt(i)>=65 && password.charAt(i)<=91){
                may++;
            }else if (password.charAt(i)>=97 && password.charAt(i)<=123){
                min++;
            }else{
                num++;
            }
        }
        if (may>=5 && min>=2 & num>=5){
            fuerte=true;
        }

        return fuerte;
    }

    public String generarPassword(){
        String contrasenia="";
        // generar contraseña con la longitud que han enviado. (int)Math.floor(Math.random()
        for(int i=0;i<length;i++) {

            // We choose whether a lower case, uppercase or number
            int type = (int) Math.floor(Math.random() * 3) + 1;

            // We create the randow char
            switch (type) {
                case 1:
                    char min = (char) ((int) Math.floor(Math.random() * (123 - 97)) + 97);
                    contrasenia += min;
                    break;
                case 2:
                    char may = (char) ((int) Math.floor(Math.random() * (91 - 65)) + 65);
                    contrasenia += may;
                    break;
                case 3:
                    char num = (char) ((int) Math.floor(Math.random() * (58 - 48)) + 48);
                    contrasenia += num;
                    break;
                default:
                    System.out.println("No useful number was generated");
            }
        }
        return contrasenia;
    }

    public int getLength() {
        return length;
    }

    public String getPassword() {
        return password;
    }

    public void setLength(int length){
        this.length=length;
    }
}
