/*
Crear una matriz de 2x5, realizar la carga por columna
Imprimir la matriz
 */
package pkg05_06_2019;
import java.util.Scanner;
/**
 *

 */
public class NewClass {
    private Scanner entrada;
    private int i,j;
    private int vec[][];
    
    public void cargar(){
        Scanner entrada = new Scanner(System.in);
        vec=new int[2][5];
        
        for(i=0;i<5;i++){
            for(j=0;j<2;j++){
                System.out.println("Ingrese número["+j+"]["+i+"]");
                vec[j][i]=entrada.nextInt();
            }
        }
    }
    
    public void imprimir(){
        for(i=0;i<2;i++){
            for(j=0;j<5;j++){
                System.out.print(vec[i][j]+" - ");
            }
            System.out.println("");
        }
    }
    
    public static void main(String[] args) {
       
     NewClass matriz = new NewClass();
     matriz.cargar();
     matriz.imprimir();
        
    }
}
