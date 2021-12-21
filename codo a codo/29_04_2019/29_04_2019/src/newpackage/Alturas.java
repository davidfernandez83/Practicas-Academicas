/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;
import java.util.Scanner;
/**
 *
 * dado n cantidad de personas hay que sacar el promedio de
 * cuanto miden esas personas
 */
public class Alturas {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        float altura, suma=0,promedio=0;
        int x=1, n=0;

        System.out.println("¿Cuantas personas hay?");
        n=teclado.nextInt();
        while(x<=n){
            System.out.println("Ingrese una altura:");
            altura=teclado.nextFloat();
            suma=suma+altura;
            x++;
        }
        promedio=suma/n;
        System.out.println("El promedio de altura es: "+promedio);
        
    }
}
