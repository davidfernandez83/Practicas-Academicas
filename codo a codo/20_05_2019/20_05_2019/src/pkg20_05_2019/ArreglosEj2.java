/*
 * Un programa que pida ingresar un vector de n elementos.
 * Luego que sume estos elements
 */
package pkg20_05_2019;
import java.util.Scanner;
public class ArreglosEj2 {
    private Scanner teclado;
    private int[] vec;
    //métodos
    //cargar la info
    public void cargar(){
      Scanner teclado = new Scanner(System.in);
       System.out.println("Cuantos elementos tendrá el vector");         
       int n = teclado.nextInt();
       vec = new int[n];
       for(int i=0;i<vec.length;i++){
           System.out.println("Ingrese el elemento del vector:");
           vec[i] = teclado.nextInt();
       }
    }    
    //acumular los elementos
    public void acumularElementos(){
        int suma =0;
        for(int i=0;i<vec.length;i++){
            suma+=vec[i];                      
       }
        System.out.println("La suma de los elementos es: " + suma);
    }
    
    public static void main(String[] args) {
        ArreglosEj2 objeto = new ArreglosEj2();
        objeto.cargar();
        objeto.acumularElementos();
       
    }
}