/*
dados 3 alumnos mostrar las 3 notas que sacaron en los parciales
luego mostrar el promedio de las notas
 */
package pkg05_06_2019;

import java.util.Scanner;

/**
 *
 * @author Navegador
 */
public class NewClass1 {
    private Scanner entrada;
    private int i,j;
    private int notas[][];
    private int promedio[];
    private int notasTotal[];
    private String alumnos[];
    
    public void cargar(){
        Scanner entrada = new Scanner(System.in);
        alumnos = new String[3];
        notas = new int[3][3];
        //promedio[] = new int;
        
        for(i=0; i<alumnos.length;i++){
            System.out.println("Ingrese el nombre del alumno");
            alumnos[i]=entrada.nextLine();
            for(j=0; j<notas.length;j++){
                System.out.println("Ingrese la nota");
                notas[i][j]=entrada.nextInt();
            }
        }
        
        
    }
    
    public void sumarNotas(){
        Scanner entrada = new Scanner(System.in);
        for(i=0; i<alumnos.length;i++){
            for(j=0; j<notas.length;j++){
                //notas[i][j];
            }
        }
    }
    
    
    public void mostrarPromedio(){
        
    }
    
    
    
    public static void main(String[] args) {
        
    }
    
    
}
