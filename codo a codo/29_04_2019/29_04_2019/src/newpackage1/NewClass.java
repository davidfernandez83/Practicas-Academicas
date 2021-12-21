/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage1;
import java.util.Scanner;
/**
 *
 * en una empresa trabajan n empleados, cuyo sueldos osilan entre 1000 y 5000 usd
 * determinar programa que lea los sueldos, cuantos cobran entre 1000 y 3000
 * y cuantos mas de 3000. Finalmente, cuanto gasta la empresa en sueldos.
 * 
 */
public class NewClass {
    public static void main(String[] args) {
    Scanner teclado = new Scanner(System.in);
    int sueldo=0, total=0, x=1, n=0,cont1=0,cont2=0;
    
    System.out.println("¿Cuantos empleados desea ingresar?");
    n=teclado.nextInt();
    
    while(x<=n){
        System.out.println("Ingrese un sueldo: ");
        sueldo=teclado.nextInt();
        if(sueldo>=1000&&sueldo<=3000){
            cont1++;
        }else if(sueldo>3000){
            cont2++;
        }
        total=total+sueldo;
        x++;
    }
        System.out.println(cont1+" ganan enter 1000 y 3000");
        System.out.println(cont2+" ganan mas de 3000");
        System.out.println("La empresa gasta "+total+" en sueldos");
    
    }
}
