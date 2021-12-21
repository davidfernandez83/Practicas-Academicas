/*
ingrese 5 numeros,
que el programa calcule cuantos son los multiplos de 3 y cuantos de 5
 */
package estructura_for;
import java.util.Scanner;
/**
 *
 * @author Navegador
 */
public class NewClass2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int i,valor=0, multiplo3=0, multiplo5=0;
        for(i=0;i<5;i++){
            System.out.println("Ingrese un número");
            valor=sc.nextInt();
            if(valor%3==0){
                multiplo3++;
            }
            if(valor%5==0){
                multiplo5++;
            }
                    
        }
        System.out.println("Los multiplos de 3 son: "+multiplo3);
        System.out.println("Los multiplos de 5 son: "+multiplo5);
    }
}
