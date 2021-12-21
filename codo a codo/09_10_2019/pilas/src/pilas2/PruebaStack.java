package pilas2;
import java.util.Stack;

public class PruebaStack{
    public static void main(String[] args) {
        Stack<String> pila = new Stack<String>();
        System.out.println("Insetamos tres elementos en la pila");
        pila.push("Juan");
        pila.push("Pedro");
        pila.push("Diego");
        System.out.println("Cantidad de elementos en la pila " + pila.size());
        System.out.println("Extraer elementos de la pila " + pila.pop());
        System.out.println("Cantidad de elementos que nos quedan " + pila.size());
        System.out.println(pila.peek());
        while(!pila.isEmpty()){
            System.out.println(pila.pop() + " - ");
            System.out.println();
        }
        
        Stack<Integer> pila2 = new Stack<Integer>();
        pila2.push(80);
        pila2.push(120);
        pila2.push(90);
        
        System.out.println("Imprimimos una pila de enteros:");
        for(Integer elemento : pila2){
            System.out.println(elemento + " - ");
            System.out.println();
        }
        
        System.out.println("Borramos todos los elementos de la pila:");
        pila2.clear();
        System.out.println("Cantidad de elementos en la pila: " + pila.size());
        
        
    }
    
    
}
