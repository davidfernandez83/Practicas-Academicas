/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg22_04_2019;
import java.util.Scanner;


/**
escribir un programa donde se ingrese 3 num distintos la computadora
* debe compararlo
* que muestre el menor y el mayor
 */
public class NewClass {
    public static void main(String[] args){
        Scanner teclado = new Scanner(System.in);
        int num1,num2,num3;
        System.out.println("Ingrese el primer numero");
        num1=teclado.nextInt();
        System.out.println("Ingrese el segundo numero");
        num2=teclado.nextInt();
        System.out.println("Ingrese el tercer numero");
        num3=teclado.nextInt();
        
        if(num1>num2&&num1>num3){
            System.out.println("El numero "+num1+" es el mayor");
        }else{
            if(num2>num3){
            System.out.println("El numero "+num2+" es el mayor");
            }else{
                System.out.println("El numero "+num3+" es el mayor");
            }
        }
        
        if(num1<num2&&num1<num3){
            System.out.println("El numero "+num1+" es el menor");
        }else{
            if(num2<num3){
            System.out.println("El numero "+num2+" es el menor");
            }else{
                System.out.println("El numero "+num3+" es el menor");
            }
        }
    }
    
}
