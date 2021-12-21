
package com.codoacodo.calculadora;

import com.codoacodo.rutinas.Matematica;
import com.codoacodo.rutinas.Cadena;


public class PruebaPaquetes {
    public static void main(String[] args) {
        System.out.println("La suma de 2 + 2 es " + Matematica.sumar(2, 2));
        String cadena = "Hola mundo!";
        System.out.println(Cadena.mayuscula(cadena));
    }
}