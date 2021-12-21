
package recursividad;
import java.util.Scanner;

public class Recu2 {
    
    public static boolean impar(int num){
        if(num==0){
            return false;
        }else{
            return par(num-1);
        }
    }
    
    public static boolean par(int num){
        if(num==0){
            return true;
        }else{
            return impar(num-1);
        }
    }
    
    public static void main(String[] args) {
        int numero;
        Scanner teclado = new Scanner(System.in);
        System.out.println("Ingrese un número entero");
        numero = teclado.nextInt();
        if(par(numero))
            System.out.println("El número es par");
        else
            System.out.println("El número es impar");
    }
    
}
