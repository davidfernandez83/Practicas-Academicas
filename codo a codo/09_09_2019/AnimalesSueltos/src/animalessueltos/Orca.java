package animalessueltos;

public class Orca extends Animal implements Nadador{
    
    public Orca(String nombre){
        super(nombre);
        
        
    }
    //orca puede tener comportamientos propios
    
    public void sonar(){
        System.out.println("Soy una orca " + this.getNombre());
    }
    
    @Override
    public void nadar(){
        System.out.println("Orca nadando feliz");
    }
    
    @Override
    public void comer(double cantidadComida){
        this.setPeso(this.getPeso() + cantidadComida + 0.01);
    }

}
