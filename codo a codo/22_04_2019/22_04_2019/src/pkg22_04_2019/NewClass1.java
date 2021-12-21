/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg22_04_2019;
import java.util.Scanner;
/**
 *
 * @author Navegador
 */
public class NewClass1 {
    public static void main(String[] args){
        Scanner teclado=new Scanner(System.in);
        int y,x;
        System.out.println("Ingrese un numero");
        x=teclado.nextInt();
        System.out.println("Ingrese el segundo numero");
        y=teclado.nextInt();
        
        if(x<0&&y<0){
            System.out.println("Estas en el cuadrante III");
        }else{
            if(x>0&&y>0){
            System.out.println("Estas en el cuadrante I");
            }else{
                if(x<0&&y>0){
                    System.out.println("Estas en el cuadrante II");
                }else{
                    if(x>0&&y<0){
                    System.out.println("Estas en el cuadrante IV");
                    }else{
                        System.out.println("Numeros incorrectos");
                    }
                }

            }

        }
        
        
        
        
    }
    
}
