/*
crear una matriz de 3x5 con elementos enteros
cargar sus componentes y luego visualizarlos
 */
package pkg03_06_2019;
import java.util.Scanner;
/**
 *
 * 
 */
public class Main {

    private Scanner entrada;
    private int[][] vec;
    
    public void cargar(){
        entrada = new Scanner(System.in);
        vec= new int[3][5];
        for(int f=0; f<3; f++){
            for(int c=0; c<5; c++){
                System.out.println("Ingrese el componente");
                vec[f][c]=entrada.nextInt();
                System.out.println("");
            }
        }
    }
    
    public void imprimir(){
        for(int f=0; f<3; f++){
            for(int c=0; c<5; c++){
                System.out.print(vec[f][c] + " ");
                
            }
            System.out.println();
        }
    }
    
    public static void main(String[] args) {
        Main matriz = new Main();
        matriz.cargar();
        matriz.imprimir();
    }
    
}
