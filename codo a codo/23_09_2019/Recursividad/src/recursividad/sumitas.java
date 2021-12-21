
package recursividad;
import java.util.Scanner;

public class sumitas {
    
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int num1, num2;
        
        System.out.println("Ingrese el primer número");
        num1 = teclado.nextInt();
        System.out.println("Ingrese el segundo número");
        num2 = teclado.nextInt();
        System.out.println("La suma es: " + sumar(num1, num2));
    }
    
    public static int sumar(int a, int b){
        if(b==0){
            return a;
        }else if(a==0){
            return b;
        }else{
            return 1 + sumar(a, b-1);
        }
    }
}
