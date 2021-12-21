package pilas;
import java.util.Stack;

public class TestLibros {

    public static void main(String[] args) {
        Stack<Libro> pila = new Stack<Libro>();
        Libro libro1 = new Libro("El Quijote","Cervantes");
        Libro libro2 = new Libro("Hamlet","Shakespeare");
        Libro libro3 = new Libro("La divina comedia","Dante");
        pila.push(libro1);
        pila.push(libro2);
        pila.push(libro3);
        System.out.println(pila.peek().getTitulo());
        while(!pila.isEmpty()){
            System.out.println(pila.pop().getTitulo());
        }
    }
    
}
