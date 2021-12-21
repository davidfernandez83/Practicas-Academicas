//Funcion Ackermann
package recursividad;
import java.util.Scanner;

public class Recu5 {
    
    //recursion anidada
    static int ackermann(int m, int n){
        if(m==0)
            return n + 1;
        else if(n==0)
            return ackermann(m-1, 1);
        else
            return ackermann(m-1, ackermann(m, n-1));
    }
    
    
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int m,n;
        System.out.println("Ingrese un número natural");
        m=teclado.nextInt();
        System.out.println("Ingrese otro número natural");
        n=teclado.nextInt();
        
        System.out.println(ackermann(m, n) + " es el número natural resultante");
    }
    
}
