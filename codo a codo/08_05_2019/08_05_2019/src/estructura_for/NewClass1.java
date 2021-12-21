/*
pida 5 valores por teclado y luego lo sume y le saque el prodemio
 */
package estructura_for;
import java.util.Scanner;
/**
 *
 * @author Navegador
 */
public class NewClass1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int i, valor=0,suma=0;
        float promedio=0;
        for(i=0;i<5;i++){
            System.out.println("Ingrese un número");
            valor=sc.nextInt();
            suma+=valor;
        }
        promedio=suma/i;
        System.out.println("El promedio es: "+promedio);
    }
}
