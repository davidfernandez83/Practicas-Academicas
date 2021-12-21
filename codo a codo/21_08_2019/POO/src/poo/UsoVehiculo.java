package poo;
import javax.swing.*;
public class UsoVehiculo {
    
     public static void main(String[] args) {
        /*Auto mercury = new Auto();
        Auto miAuto = new Auto();
        //System.out.println("Este auto tiene: " + mercury.getRuedas() + " ruedas");
       // System.out.println("Ruedas: " + mercury.cantidad_ruedas());
        //miAuto.estableceColor("rojo");
        System.out.println("El color del auto es:");
        System.out.println(JOptionPane.showInputDialog("Ingrese el color:"));
        //System.out.println(miAuto.unColor());       
        miAuto.estableceColor(miAuto.unColor());
        
        miAuto.estableceAsientos(JOptionPane.showInputDialog("¿Quiere asientos de cuero?"));
        System.out.println(miAuto.tipoAsientos());
        miAuto.configurarAire(JOptionPane.showInputDialog("¿Quiere aire en el coche?"));
        System.out.println(miAuto.tieneAireAcond());
        System.out.println(miAuto.pesoAuto());
        System.out.println("El precio final del auto: " + miAuto.precioCoche()); 
         */
        
        Auto miAuto = new Auto();
        miAuto.estableceColor("Azul");
        Furgoneta furgoneta1 = new Furgoneta(8,800);
        furgoneta1.estableceColor("blanco");
        furgoneta1.estableceAsientos("si");
        furgoneta1.configurarAire("si");
        System.out.println(miAuto.datosGenerales() + miAuto.unColor());
        System.out.println(furgoneta1.datosGenerales() + furgoneta1.unColor()); 
    }
}