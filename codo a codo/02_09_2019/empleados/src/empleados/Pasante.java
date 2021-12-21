
package empleados;

public class Pasante extends Empleado{
    private String carrera;
    
    public Pasante(String nom, String carre){
        super(nom);
        this.carrera = carre;
    }
    
    @Override
    public String unaDescripcion(){
        return "Este alumno estudia la carrera de: "+carrera;
    }
    
}
