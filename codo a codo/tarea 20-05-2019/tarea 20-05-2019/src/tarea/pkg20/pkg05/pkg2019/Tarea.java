/*
cargar 5 numeros por teclado, recrear un metodo para sacar el promedio,
otro que lo sume y otro que los imprima de mayor a menor
 */
package tarea.pkg20.pkg05.pkg2019;
import java.util.Scanner;
import java.lang.Math;
/**
 *
 * @author david
 */
public class Tarea {
    private Scanner sc = new Scanner(System.in);
    private int i,j,aux, suma;
    private int numeros[];
    private double promedio;
    
    public void promedio(){
        numeros = new int[5];
        //double promedio;
        for(i=0;i<numeros.length;i++){
            System.out.println("Ingrese el número["+(i+1)+"]");
            numeros[i]=sc.nextInt();
            suma+=numeros[i];
        }
        promedio=(double)suma/numeros.length;
        System.out.println("El promedio es: "+promedio);
        
    }
    
    public void sumar(){
        numeros = new int[5];
        for(i=0;i<numeros.length;i++){
            System.out.println("Ingrese el número ["+(i+1)+"]");
            numeros[i]=sc.nextInt();
            suma+=numeros[i];
        }
        System.out.println("La suma es: "+suma);
        
    }
    
    public void imprimir(){
        numeros = new int[5];
        for(i=0;i<numeros.length;i++){
            System.out.println("Ingrese el número ["+(i+1)+"]");
            numeros[i]=sc.nextInt();
            //numeros[i]=(int) Math.floor(Math.random()*200);
        }
         for(i=0;i<numeros.length;i++){
             for(j=0;j<numeros.length;j++){
                 if(numeros[i]>numeros[j]){
                     aux=numeros[j];
                     numeros[j]=numeros[i];
                     numeros[i]=aux;
                 }
             }
             
        }
        for(i=0;i<numeros.length;i++){
            System.out.print(numeros[i] + " ");
        }
        
    }


    public static void main(String[] args) {
        Tarea objTarea = new Tarea();
        objTarea.promedio();
        /*int a;
        for(a=0;a<500;a++){
        System.out.println((int)Math.floor( Math.random()*100));
        }*/
    }
    
}
