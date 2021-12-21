/*
Factorial de un número usando for

 */
package pkg13_05_2019;

/**
 *
 * @author Navegador
 */
public class Factorial {
    public static void main(String[] args) {
        int suma = 0;
        int factorial = 1;
        int i;
        for(i=1;i<=5;i++){
            suma+=i;
            factorial*=i;
            
        }
        System.out.println("La suma es: " + suma);
        System.out.println("El factorial es: " + factorial);
        
    }
    
}
