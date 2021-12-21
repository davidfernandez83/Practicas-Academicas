/*

 */
package colaboracion;

/**
 *

 */
public class Banco {
    
    private Cliente cliente1, cliente2, cliente3;
    
    public Banco(){
        cliente1 = new Cliente("Javier");
        cliente2 = new Cliente("Katty");
        cliente3 = new Cliente("Isabel");
    }
    
    
    public void operar(){
        cliente1.depositar(10000);
        cliente2.depositar(8000);
        cliente3.depositar(6000);
        cliente1.extraer(2000);
        cliente3.extraer(1000);
        
    }
    
    public void depositosTotales(){
        int t = cliente1.retornarMonto()+cliente2.retornarMonto()+cliente3.retornarMonto();
        System.out.println("El total de dinero que tiene en el banco es: "+t);
        cliente1.imprimir();
        cliente2.imprimir();
        cliente3.imprimir();
    }
    
    
    
    public static void main(String[] args) {
        
        Banco banco = new Banco();
        banco.operar();
        banco.depositosTotales();
    }
    
}
