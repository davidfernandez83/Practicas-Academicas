
package empleados;
import java.util.Date;

class Empleado {
    private String nombre, apellido;
    //int codigoEmpleado;
    private double sueldo;
    private Date altaIngreso;
    
    
    /*public Empleado(){
        this.nombre = "No onformado";
        this.apellido = "No informado";
        this.codigoEmpleado = 0;
    }*/
    
    /*public Empleado(String nombre){
        this();
        this.nombre = nombre;
    }*/
    
    public Empleado(String nom, double sue, int año, int mes, int dia){
        this.nombre = nom;

    }
    
    /*@Override
    public String toString(){
        return "Empleado: "+this.nombre+" "+this.apellido+" "+this.codigoEmpleado;
    }*/

    public static void main(String[] args) {
        /*Empleado empleado1 = new Empleado();
        Empleado empleado2 = new Empleado("Maria");
        Empleado empleado3 = new Empleado("Juan","Perez",100);
        
        System.out.println(empleado1.toString());
        System.out.println(empleado2.toString());
        System.out.println(empleado3.toString());*/
    }
    
}
