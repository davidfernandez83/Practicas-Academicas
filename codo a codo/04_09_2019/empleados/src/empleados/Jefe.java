
package empleados;

final public class Jefe extends Empleado implements Jefes{
    private double incentivo;
    
    public Jefe(String nom, double sue, int año, int mes, int dia){
        super(nom,sue, año, mes, dia);
    }
    
    @Override
    public String tomaDesiciones(String decision){
        return "Un miembro de la jefatura tomó la decisión de: " + decision;
    }
    
    @Override
    public double recibeBonus(double aguinaldo){
        double prima=2000;
        return Trabajadores.BONUSBASICO + aguinaldo + prima;
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
