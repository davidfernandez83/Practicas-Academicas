package empleados;
import java.util.Date;
import java.util.GregorianCalendar;
public class Empleado extends Persona implements Comparable, Trabajadores{
//variables de clase (atributos)
    //private String nombre; //Tipo de objeto de clase
    private double sueldo; //tipo de dato primitivo
    private Date fechaIngreso;  //Objeto de clase
    
    public Empleado(String nom, double sue, int año, int mes, int dia){
        super(nom);
        sueldo = sue;
        GregorianCalendar calendario = new GregorianCalendar(año,mes-1,dia);
        fechaIngreso = calendario.getTime();    //devuelve la fecha
    }
    
    public Empleado(String nom){
        this(nom,10000,2000,01,30);
    }
    
    @Override
    public double recibeBonus(double aguinaldo){
        return Empleado.BONUSBASICO + aguinaldo;
    }
    
    @Override
    public int compareTo(Object objeto){ //implementamos el metodo compareto de la interface comparable
        Empleado unEmpleado = (Empleado)objeto;
        if(sueldo<unEmpleado.sueldo){
            return -1;
        }
        if(sueldo>unEmpleado.sueldo){
            return 1;
        }
        return 0;
    }
    
    //constructor
    /*public Empleado(double sue, int año, int mes, int dia){
        sueldo = sue;
        GregorianCalendar calendario = new GregorianCalendar(año,mes-1,dia);
        fechaIngreso = calendario.getTime();    //devuelve la fecha
    }*/
    
    @Override
    public String unaDescripcion(){
        return "Este empleado tiene un sueldo de: "+sueldo;
    }
    
   /* public Empleado(String nom){
        this.nombre = nom;
    }*/
     /*   //getter 
    public String unNombre(){
        return nombre;
    }*/
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