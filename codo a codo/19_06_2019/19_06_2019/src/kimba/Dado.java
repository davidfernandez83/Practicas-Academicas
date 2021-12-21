/*
juego de dados
se tira 3 dados si los 3 salen con los mismos números informa que ganó
 */
package kimba;

/**
 *
 * @author Navegador
 */
public class Dado {
    //valor tirar imprimir retornar valor
    private int valor;
    
    public void tirar(){
        valor=1+(int)(Math.random()*6);
    }
    
    public void imprimir(){
        System.out.println("El valor del dado es: "+valor);
    }
    
    public int retornarValor(){
        return valor;
    }
    
    public static void main(String[] args) {
        
    }
    
}
