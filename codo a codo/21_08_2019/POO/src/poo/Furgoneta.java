/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo;

/**
 *
 * @author Navegador
 */
public class Furgoneta extends Auto{
    private int capacidadCarga;
    private int asientosExtra;
    
    public Furgoneta(int asientosExtra, int capacidadCarga){
        super(); //llamamos al constructor de la super clase
        this.asientosExtra = asientosExtra;
        this.capacidadCarga = capacidadCarga;
    }
    
    public String datosFurgonetas(){
        return "La capacidad de carga de la furgoneta es: "+capacidadCarga+" Kg. "+
                "y los lugares son: "+asientosExtra;
    }
    
}
