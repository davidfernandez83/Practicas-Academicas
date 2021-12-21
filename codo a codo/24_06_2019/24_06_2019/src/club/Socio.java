package club;
/*
*Socio: Nombre y antigüedad en años
 * Constructor debe pedir carga de nombre y antigüedad
 * Club tres atributos uno por cada socio
 * Un método que defina mayor antigüedad
*/
import java.util.Scanner;

public class Socio {
    private String nombre;
    private int antig;
    
    
    public Socio(Scanner teclado){
        System.out.println("Ingrese el nombre del socio:");
        nombre = teclado.next();
        System.out.println("Ingrese la antigüedad en años del socio:");
        antig = teclado.nextInt();        
    }
 
    public void imprimir(){
        System.out.println("El socio con mayor antiüedad es: "+
                nombre + " y tiene " + antig + " años de antigüedad.");
    }
    public int retornarAntig(){
        return antig;
    }
}