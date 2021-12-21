package colas;
import java.util.LinkedList;
import java.util.Queue;
public class PruebaCola {
        public static void main(String[] args) {
       Queue<String> cola = new LinkedList<String>();
            System.out.println("Insertamos tres elementos en la cola: ");
            cola.add("Emiliano");
            cola.add("Isabel");
            cola.add("Nicolás");
            System.out.println("Cantidad de elementos en la cola: " + cola.size());
            System.out.println("extraemos un elemento de la cola: " + cola.poll());
            System.out.println("Cantidad de elementos en la cola: " + cola.size());
            System.out.println("El primer elemento en la cola: " + cola.peek());
            
            while(!cola.isEmpty())
                System.out.println(cola.poll() + "-");
                System.out.println();
            
      Queue<Integer> cola2 = new LinkedList<Integer>();
            cola2.add(50);
            cola2.add(100);
            cola2.add(12);
            System.out.println("Imprimimos la cola de enteros:");
            for(Integer elemento : cola2)
                System.out.println(elemento + "-");
            System.out.println();
            System.out.println("Borramos toda la cola");
            cola2.clear();
            System.out.println("Cantidad de elementos en la cola de enteros: " + 
            cola2.size());
                    
            
    }
    
}