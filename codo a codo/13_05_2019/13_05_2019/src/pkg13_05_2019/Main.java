/*
un programa que lea n triangulos, informar:
a) que tipo de triangulo es? (equilatero, isosceles, escaleno)
b)cantidad de cada tipo de triangulo
c)tipo de triangulo de menor cantidad


equilatero=3 iguales
isosceles=2 iguales
escaleno=3 diferentes
 */
package pkg13_05_2019;
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
        Scanner sc = new Scanner(System.in);
        int n,i,l1,l2,l3,cantEquilatero,cantIsoscele,cantEscaleno;
        cantEquilatero=0;
        cantIsoscele=0;
        cantEscaleno=0;
        System.out.println("Ingrese la cantidad de triangulos a procesar: ");
        n=sc.nextInt();
        
        for(i=1;i<=n;i++){
            System.out.println("Ingrese el lado 1: ");
            l1=sc.nextInt();
            System.out.println("Ingrese el lado 2: ");
            l2=sc.nextInt();
            System.out.println("Ingrese el lado 3: ");
            l3=sc.nextInt();
            if(l1==l2 && l1==l3){
                System.out.println("Es un equilatero");
                cantEquilatero++;
            }else if(l1==l2 || l1==3 || l2==l3){
                System.out.println("Es un isoscele");
                cantIsoscele++;
            }else{
                System.out.println("Es un Escaleno");
                cantEscaleno++;
            }
        }
        System.out.println("Hay " + cantEquilatero + " de triangulos equilateros");
        System.out.println("Hay " + cantIsoscele + " de triangulos isosceles");
        System.out.println("Hay " + cantEscaleno + " de triangulos escalenos");
        
        if(cantEquilatero < cantIsoscele && cantEquilatero < cantEscaleno){
            System.out.println("La menor cantidad de triangulos es equilateros");
        }else if(cantIsoscele < cantEscaleno){
            System.out.println("La menor cantidad de triangulos es isosceles");
        }else{
            System.out.println("La menor cantidad de triangulos es escalenos");
        }
        
    }
    
}
