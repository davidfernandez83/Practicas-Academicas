/*
 * Suma de arreglos
 */
package pkg20_05_2019;
import java.util.Scanner;
public class Arreglos {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int a[] = new int[5];
        int b[] = new int[5];
        int s[] = new int[5];
        int i;
    
        System.out.println("\nSUMA LOS ELEMENTOS DEL ARREGLO\n");
        System.out.println("\n--------LECTURA DE DATOS--------\n");
        for(i=0;i<=4;i++){
            System.out.println("Ingrese a[" + i + "]: ");
            a[i]=teclado.nextInt();
            System.out.println("Ingrese b[" + i + "]: ");
            b[i]=teclado.nextInt();
            
            s[i] = a[i] + b[i];            
        }
        System.out.println("\n--------RESULTADOS--------\n");
        System.out.println("Arreglo A   Arreglo B   Arreglo S");
        System.out.println("----------------------------------");
        for(i=0;i<=4;i++){
            System.out.println("       "+ a[i]+"        "+b[i]+"         "+s[i]);
        }
    }
    
}