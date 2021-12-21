
package recursividad;
//fibonacci - canal youtube derivando
import java.util.Scanner;


public class Recu4 {
    
    public static void main(String[] args) {
        int limite, i;
        Scanner teclado = new Scanner(System.in);
        System.out.println("Ingrese el número de elementos a mostrar");
        limite = teclado.nextInt();
        for(i=0; i<=limite;i++){
            System.out.print(fibo(i) + ", ");
        }
        
        
    }
    //recursividad multiple
    private static int fibo(int num){
        if(num==0 || num==1){
            return num;
        }else
            return fibo(num-1) + fibo(num-2);
    }
    
}
