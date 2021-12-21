package animalessueltos;

public class Condor extends Animal implements Volador{

    public Condor(String nombre) {
        super(nombre);
    }
    
    public void graznar(){
        System.out.println("Soy un condor de los andes");
    }
    
    @Override
    public void volar(){
        System.out.println("Vuelo muy alto");
    }

    @Override
    public void comer(double cantidadComida) {
        
    }
    
}
