/*
cargar 5 empleados con 5 sueldos que imprima los sueldos mayores a 30000
y si es mas de 30000 que saque ganancias
 */
package pkg27_05_2019;
import java.util.Scanner;

/**
 *
 * @author david
 */
public class Tarea02 {
    private String[] empleados;
    private int[] sueldos;
    private int i;
    private int[] mayoresTreinta,ganancias;
    private int porcentajeGanancias = 5;
    private Scanner sc;

        
    public void cargar(){
        empleados = new String[5];
        sueldos = new int[5];
        mayoresTreinta = new int[5];
        ganancias = new int[5];
        sc = new Scanner(System.in);
        
        for(i=0;i<=4;i++){
            System.out.println("Ingrese el empleado["+i+"]");
            empleados[i]=sc.nextLine();
            System.out.println("Ingrese el sueldo["+i+"]");
            sueldos[i]=sc.nextInt();
            if(sueldos[i]>30000){
                mayoresTreinta[i]=sueldos[i];
                ganancias[i]=porcentajeGanancias*sueldos[i]/100;
            }
        }
        
        
    }
    
    
    
    public void imprimir(){

        for(i=0;i<4;i++){
            if(mayoresTreinta[i]>0){
                System.out.println("El sueldo["+i+"] es mayor a 30000 y paga "
                + ganancias[i] + " de ganancias");
            }
        }
        
    }
    
    
    public static void main(String[] args) {
        
        Tarea02 objTarea = new Tarea02();
        objTarea.cargar();
        objTarea.imprimir();
        
        
    }
    
}
