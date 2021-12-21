package animalessueltos;

public abstract class Animal {
    private String nombre;
    private double peso;
    
    public Animal(String nombre){
        this.nombre = nombre;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }
   
   
    public abstract void comer(double cantidadComida);
    
     /*
    public abstract void respira();
    public abstract void duermen();
    public abstract void ponenHuevos();
    public abstract void nacenVivos();
    */
    
}
