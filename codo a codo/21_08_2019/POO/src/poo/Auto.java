package poo;

public class Auto {
    //creamos los atributos de la clase Auto
    private int ruedas;
    private int ancho;
    private int largo;
    private int motor;
    private int peso;
    int peso_Total;
    boolean asientosCuero;
    boolean aireAcond;
    private String color;

    public Auto(){  //constructor de clase
        ruedas = 4;
        ancho = 300;
        largo = 2200;
        motor = 1600;
        peso = 600;
        aireAcond = false;       
        peso_Total =0;       
    }

    public int getRuedas() {
        return ruedas;
    }

    public void setRuedas(int ruedas) {
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
    //getter
    public String cantidad_ruedas(){
        return "la cantidad de ruedas es: " + ruedas;
    }
   //setter
    public void configurarAire(String aireAcond){
        if(aireAcond.equalsIgnoreCase("si")){
            this.aireAcond = true;
        }else{
            this.aireAcond =false;
        }
    }
    //getter
    public String tieneAireAcond(){
        if(aireAcond==true){
            return "El coche tiene aire acondicionado";
        }else{
            return "El coche NO tiene aire acondicionado";
        }
    }
    // getter & setter en uno solo
    public String pesoAuto(){
        int peso_carroceria =500;   //variable local
        peso_Total = peso + peso_carroceria;
        if(asientosCuero==true){
            peso_Total+=50;
        }
        if(aireAcond==true){
            peso_Total+=20;
        }
        return "el peso del coche es " + peso_Total;
    }
    public void estableceColor(String color_auto){   //setter
        color =color_auto;
    }
    public String unColor(){    //getter
        return "el color del coche es: " + color; 
    }
    
    public void estableceAsientos(String asientosDeCuero){    //setter
        if(asientosDeCuero.equalsIgnoreCase("si")){
            this.asientosCuero = true;
        }else{
            this.asientosCuero = false;
        }
    }
    public String tipoAsientos(){   //getter
        if(asientosCuero==true){
            return "El coche lleva asientos de cuero";
            
        }else{
            return "El coche lleva asientos normales";
        }
    }
    public int precioCoche(){   //getter
        int precioFinal = 15000;    //estimado en dólares
        if(asientosCuero==true){
            precioFinal += 2000;
        }
        if(aireAcond==true){
            precioFinal +=1500;
        }
        return precioFinal;
    }
    
    //getter
    public String datosGenerales(){
        return "La plataforma del auto tiene "+ruedas+" ruedas, mide: "+
                largo/1000+" cm. un ancho de: "+ancho+", un peso de: "+peso;
    }
}