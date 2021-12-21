/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg29_04_2019;

import java.util.Scanner;

/**
 *
 * @author Navegador
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int x = 0, nota, conta1 = 0, conta2 = 0;
        while (x <= 4) {
            System.out.println("Ingrese un valor");
            nota = teclado.nextInt();
            if (nota >= 7) {
                conta1++;
            } else {
                conta2++;
            }
            x++;
        }
        System.out.println("Cantidad de notas mayores a 7: " + conta1);
        System.out.println("Cantidad de notas menores a 7: " + conta2);
    }
}
