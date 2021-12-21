package empleados;
import java.util.Date;
import java.util.GregorianCalendar;
public class Empleado {
//variables de clase (atributos)
    private String nombre; //Tipo de objeto de clase
    private double sueldo; //tipo de dato primitivo
    private Date fechaIngreso;  //Objeto de clase
    //constructor
    public Empleado(String nom, double sue, int año, int mes, int dia){
        nombre = nom;
        sueldo = sue;
        GregorianCalendar calendario = new GregorianCalendar(año,mes-1,dia);
        fechaIngreso = calendario.getTime();    //devuelve la fecha
    }
    public Empleado(String nom){
        this.nombre = nom;
    }
        //getter 
    public String unNombre(){
        return nombre;
    }
    public double unSueldo(){
        return sueldo;
    }
    public Date unaFechaAlta(){
        return fechaIngreso;
    }
    public void aumentaSueldo(double porcentaje){
        double aumento = (sueldo*porcentaje)/100;
        sueldo+=aumento;
    }
    
}