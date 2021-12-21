package animalessueltos;

public class Pinguino extends Animal implements Nadador,Volador{
    
    public Pinguino(String nombre) {
        super(nombre);
    }

    public void cuak(){
        System.out.println("Soy un pinguino");
    }
    
    @Override
    public void volar(){
        System.out.println("No puedo volar pero se nadar muy bien... cuak");
    }
    
    @Override
    public void nadar(){
        System.out.println("Soy un pinguino nadando feliz");
    }
    
    @Override
    public void comer(double cantidadComida) {
        
    }
    
}
