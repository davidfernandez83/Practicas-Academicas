/*
ingrese 3 numeros si la suma es menor o igual a 10 que aparezca un cartel
que diga bingo si no que diga perdiste
 */
package pkg22_04_2019;
import java.util.Scanner;

/**
 *
 * @author Navegador
 */
public class Class1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int producto, suma, num1, num2, num3;
        Scanner teclado = new Scanner(System.in);
        System.out.println("Ingrese el primer numero");
        num1=teclado.nextInt();
        System.out.println("Ingrese el segundo numero");
        num2=teclado.nextInt();
        System.out.println("Ingrese el tercer numero");
        num3=teclado.nextInt();
        suma = num1+num2+num3;
        if (suma<=10){
            producto=num1*num2*num3;
            System.out.println(producto);
        }else{
            
            System.out.println(suma);
        }
        
    }
    
}
