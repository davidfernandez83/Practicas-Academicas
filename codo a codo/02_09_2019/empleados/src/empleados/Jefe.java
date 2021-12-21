
package empleados;

final public class Jefe extends Empleado{
    private double incentivo;
    
    public Jefe(String nom, double sue, int año, int mes, int dia){
        super(nom,sue, año, mes, dia);
    }
    
    public void ganaIncentivo(double m){
        this.incentivo = m;
    }
    
    
    @Override
    public double unSueldo(){ 
        double sueldoJefe;
        // Principio de sustitucion
        //la java vm puede darse cuenta cuando ejecuta
        //el programa cuando una clase es un empleado y cuando una clase es un jefe
        sueldoJefe = super.unSueldo();
        return sueldoJefe + incentivo;
    }
    
}
