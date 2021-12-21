/*

 */
package poo;

/**
 *

 */
public class Auto {
    //creamos los atributos de la clase Auto
    private int ruedas;
    private int ancho;
    private int largo;
    private int motor;
    private int peso;
    private int peso_plataforma;
    private int peso_carroceria;
    private int peso_total;
    private boolean asientos_cuero;
    private boolean aireAcond;
    
    public Auto(){ //constructor de clase
        ruedas = 4;
        ancho = 300;
        largo = 2200;
        motor = 1600;
        peso = 600;
    }
    
    //setter
    public void configurarAire(String aireAcond){
        if(aireAcond.equalsIgnoreCase("si")){
            this.aireAcond = true;
        } else{
            this.aireAcond = false;
        }
    }
    
    //getter
    public String tieneAireAcond(){
        if(aireAcond==true){
            return "El coche tiene aires acondicionado";
        }else{
            return "El coche no tiene aire acondicionado";
        }
    }

    public int getRuedas() { //getter
        return ruedas;
    }

    public void setRuedas(int ruedas) { //setter
        this.ruedas = ruedas;
    }

    public int getAncho() {
        return ancho;
    }

    public void setAncho(int ancho) {
        this.ancho = ancho;
    }

    public int getLargo() {
        return largo;
    }

    public void setLargo(int largo) {
        this.largo = largo;
    }

    public int getMotor() {
        return motor;
    }

    public void setMotor(int motor) {
        this.motor = motor;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }
    
    // getter & setter en uno solo
    public String pesoAuto(){
        int peso_carroceria = 500;
        peso_total = peso_plataforma + peso_carroceria;
        if(asientos_cuero==true){
            peso_total+=50;
        }
        if(aireAcond==true){
            peso_total+=20;
        }
        return "El peso del coche es: "+peso_total;
    }
    
    


    public static void main(String[] args) {
        
    }
    
}
