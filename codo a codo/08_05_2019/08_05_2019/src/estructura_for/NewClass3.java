/*
Ingresar n pares de datos, cada par corresponde a la base y a la altura,
A:Informar de cada triangulo y la superficie (base x altura / 2)
B:La cantidad de triangulo cuya superficie supera 12
 */
package estructura_for;
import java.util.Scanner;

/**
 *
 * @author Navegador
 */
public class NewClass3 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int i,n=1,contSup=0,base=0,altura=0,superficie=0,superficie12;
        System.out.println("¿Cuantos triangulos va a procesar?");
        n=sc.nextInt();
        for(i=0;i<=n;i++){
            System.out.println("Ingrese base y altura:");
            base=sc.nextInt();
            altura=sc.nextInt();
            superficie=base*altura/2;
            System.out.println("La superficie es: "+superficie);
            if(superficie>12) contSup++;
        }
        System.out.println("Los que superan 12 en sup. son: "+contSup);
        
    }
}
