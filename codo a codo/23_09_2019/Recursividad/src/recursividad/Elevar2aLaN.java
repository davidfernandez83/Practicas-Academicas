package recursividad;
import java.util.Scanner;
public class Elevar2aLaN {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int num;
        do{
            System.out.println("Ingrese un número mayor que cero");
            num = teclado.nextInt();
        }while(num>=0);
        System.out.println("2^ " + num + " = " + potencia(num));
    }
    
    public static double potencia(int n){
        if(n==0){//caso base
            return 1;
        }else{
            return 2*potencia(n-1); //recursión
        }
    }
    
}

