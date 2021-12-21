/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estructuras;

/**
 *
 * Imprime los numeros del 1 al 100
 */
public class While1 {
    public static void main(String[] args){
        int x;
        x=2; //inicializamos la variable
        while(x<=100){
            System.out.print(x);
            System.out.print(" - ");
            x+=2;
        }
        
    }
}
