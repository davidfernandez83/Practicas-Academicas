/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estructuras;
import java.util.Scanner;
/**
 *
 * ingrese desde el uno hasta al valor ingresado
 */
public class While2 {
    public static void main(String[] args){
        Scanner teclado = new Scanner(System.in);
        int valor, x=1;
        System.out.println("Ingrese el valor final");
        valor=teclado.nextInt();
        while(x<=valor){
            System.out.print(x);
            System.out.print(" - ");
            x++;
        }
        
    }
    
}
