/*
matriz cuadrada de 3x3, imprimir diagonal principal
 */
package pkg03_06_2019;
import java.util.Scanner;
/**
 *
 * @author Navegador
 */
public class NewClass {
    private int vec[][];
    private Scanner entrada;
    
    public void cargar(){
        entrada = new Scanner(System.in);
        vec= new int[3][5];
        for(int f=0; f<3; f++){
            for(int c=0; c<3; c++){
                System.out.println("Ingrese el componente");
                vec[f][c]=entrada.nextInt();
                System.out.println("");
            }
        }
    }
    
    public void imprimir(){
        
        for(int k=0;k<3;k++){
            System.out.println(vec[k][k]);
        }
        
    }
    
    
    public static void main(String[] args) {
        NewClass matriz = new NewClass();
        matriz.cargar();
        matriz.imprimir();
        
    }
    
}
