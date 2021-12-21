
package excepciones;
import javax.swing.*;

public class Errores1 {

    public static void main(String[] args) {
        int i;
        int[]  miMatriz = new int[5];
        miMatriz[0] = 2;
        miMatriz[1] = 3;
        miMatriz[2] = 5;
        miMatriz[3] = 7;
        miMatriz[4] = 11;
        miMatriz[5] = 13; //Este elemento provoca un stackoverflow
        
        for (i = 0; i<5; i++){
            System.out.println("Posición: " + i + " " + miMatriz[i]);
        }
        //peticion de datos personales
        String nombre = JOptionPane.showInputDialog("Escribe tu nombre");
        int edad = Integer.parseInt(JOptionPane.showInputDialog("Escribe tu edad"));
        System.out.println("Hola " + nombre + " tu edad es: " + edad + " años.");

    }
    
}
