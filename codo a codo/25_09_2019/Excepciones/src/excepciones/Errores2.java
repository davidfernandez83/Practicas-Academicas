package excepciones;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Errores2 {
    
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("¿Que desea hacer?");
        System.out.println("1. Introducir datos");
        System.out.println("2. Salir del programa");
        int decidir = teclado.nextInt();
        
        if(decidir==1){
            pedirDatos();
        }else{
            System.out.println("Saliendo del sistema...");
            System.exit(0);
        }teclado.close();

    }
    
    static void pedirDatos()throws InputMismatchException{
        try{ //lo que quiero que haga el programa
        Scanner teclado = new Scanner(System.in);
        System.out.println("Ingrese su nombre");
        String nombre = teclado.nextLine();
        System.out.println("Ingrese su edad");
        int edad = teclado.nextInt();
        System.out.println("Hola " + nombre + " tu edad es: " + edad);
        teclado.close();
        System.out.println("Fin del programa...");
        }catch(InputMismatchException e){
            System.out.println("Debe ingresar un valor numerico para la edad");
        }

    }

}