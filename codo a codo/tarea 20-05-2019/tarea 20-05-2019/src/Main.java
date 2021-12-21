/*
Hacer un programa que permita cargar 5 nombres de alumnos con sus edades.
Que imprima a los mayores de edad
 */
package pkg20_05_2019;
import java.util.Scanner;
/**
 *

 */
public class Main {
    int i;
    private Scanner sc;
    private int[] edad;
    private String[] nombre;
    
    public void cargar(){
        Scanner sc = new Scanner(System.in);
        nombre = new String[5];
        edad = new int[5];
        for(i=0;i<nombre.length;i++){
            System.out.println("Ingrese nombre:");
            nombre[i]=sc.next();
            System.out.println("Inrege edad:");
            edad[i] = sc.nextInt();
        }
    }

    public void mayores(){
        System.out.println("Personas mayores de edad:");
        for(i=0;i<nombre.length;i++){
            if(edad[i]>=18){
                System.out.println(nombre[i]);
            }
        }
    }

    public static void main(String[] args) {
        
        Main obj = new Main();
        obj.cargar();
        obj.mayores();
        
    }
    
}
