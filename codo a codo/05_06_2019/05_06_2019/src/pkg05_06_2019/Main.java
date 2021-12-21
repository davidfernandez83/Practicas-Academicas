/*
dada una matriz de 3x4 imprimir
la primer fila, la ultima, la primer columna
 */
package pkg05_06_2019;
import java.util.Scanner;
/**
 *

 */
public class Main {
    private Scanner entrada;
    private int i,j;
    private int vec[][];
    
    
    public void cargar(){
        Scanner entrada = new Scanner(System.in);
        vec = new int[3][4];
        for(i=0;i<3;i++){
            for(j=0;j<4;j++){
                System.out.println("Ingrese número ["+i+"]["+j+"]");
                vec[i][j]=entrada.nextInt();
            }
        }

    }
    
    public void imprimirPrimerFila(){

        System.out.println("Primer fila");
        for(i=0; i<4; i++){
            System.out.print(vec[0][i]+" - ");
            System.out.println("");
        }
    }
    
    public void imprimirUltimaFila(){

        System.out.println("Ultima fila");
        for(i=0; i<4; i++){
            System.out.print(vec[2][i]+" - ");
            System.out.println("");
        }
    }
    
    public void imprimirPrimerColumna(){

        System.out.println("Ultima columna");
        for(i=0; i<3; i++){
            System.out.print(vec[i][3]+" - ");
            System.out.println("");
        }
    }
    
    
    


    public static void main(String[] args) {
        Main matriz = new Main();
        matriz.cargar();
        matriz.imprimirPrimerFila();
        matriz.imprimirUltimaFila();
        matriz.imprimirPrimerColumna();
    }
    
}