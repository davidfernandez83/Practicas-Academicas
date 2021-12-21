/*
almacenar nombre de 5 paises y ordenar alfabeticamente
 */
package pkg27_05_2019;
import java.util.Scanner;
/**
 *

 */
public class Main {
    private int i,k;
    private String[] paises;
    private Scanner sc;
    
    
    public void cargar(){
        Scanner sc = new Scanner(System.in);
        paises = new String[5];
        for(i=0;i<4;i++){
            System.out.println("Ingrese un pais");
            paises[i]=sc.nextLine();
        }
    }
    
    public void ordenar(){
        for(k=0;k<4;k++){ //for externo
            for(i=0;i<4-k;i++){ //for interno
                if(paises[i].compareTo(paises[i+1])>0){                   
                    String aux = paises[i];
                    paises[i] = paises[i+1];
                    paises[i+1] = aux;
                }
            }
        }
    }
    
    public void imprimir(){
        for(i=0;i<4;i++){
            System.out.println(paises[i]);
        }
    }


    public static void main(String[] args) {
        
    }
    
}
