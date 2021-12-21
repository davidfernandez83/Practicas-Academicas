/*
escriba un programa que solicite numeros
y que finalice la carga con -1 y que de el promedio
 */
package pkg06_05_2019;
import java.util.Scanner;
/**
 *
 * @author Navegador
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int x=0,num=0, suma=0, promedio=0;
        Scanner sc = new Scanner(System.in);
        do{
            System.out.println("Ingrese un número:");
            num=sc.nextInt();
            if(num!=-1){
                suma=suma+num;
                x++;
            }
        }while(num!=-1);
        if(x!=0 && num!=0){
            promedio=suma/x;
            System.out.println("El promedio es: "+promedio);
        }
    }
}
