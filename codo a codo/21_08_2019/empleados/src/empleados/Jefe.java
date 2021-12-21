
package empleados;

public class Jefe extends Empleado{
    private double incentivo;
    
    public Jefe(String nom, double sue, int año, int mes, int dia){
        super(nom, sue, año, mes, dia);
    }
    
    public void ganaIncentivo(double m){
        this.incentivo = m;
    }
    
    @Override
    public double unSueldo(){ 
        // Principio de sustitucion
        //la java vm puede darse cuenta cuando ejecuta
        //el programa cuando una clase es un empleado y cuando una clase es un jefe
        double sueldoJefe = unSueldo();
        return sueldoJefe + incentivo;
    }
    
}
