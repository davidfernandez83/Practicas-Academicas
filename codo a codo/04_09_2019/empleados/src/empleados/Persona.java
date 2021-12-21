
package empleados;

abstract class Persona {
    private String nombre;
    
    public abstract String unaDescripcion(); //metodo abstracto
    
    public Persona(String nom){
        this.nombre = nom;
    }
    
    public String unNombre(){
        return nombre;
    }
}
