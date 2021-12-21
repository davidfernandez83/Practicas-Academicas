
package usoconstantes;

public class UsoConstantes {
    
    public static void main(String[] args) {
        Empleado empleado1 = new Empleado("Juan");
        Empleado empleado2 = new Empleado("Maria");
        Empleado empleado3 = new Empleado("Luis");
        Empleado empleado4 = new Empleado("Rosa");
        empleado1.cambiaArea("Administración");
        //empleado1.cambiaNombre("Juana");
       /* System.out.println(empleado1.devuelveDatos());
        System.out.println(empleado2.devuelveDatos());
        System.out.println(empleado3.devuelveDatos());
        System.out.println(empleado4.devuelveDatos());*/
        System.out.println(empleado1.devuelveDatos()+"\n"+
                            empleado2.devuelveDatos()+"\n"+
                            empleado3.devuelveDatos()+"\n"+
                            empleado4.devuelveDatos()+"\n");
        System.out.println(Empleado.darIdSiguiente());
        
        
    }
    
}


    class Empleado{
        


        public Empleado(String nombre) {
            this.nombre = nombre;
            this.areaTrabajo = "RRHH";
            id = idSiguiente;
            idSiguiente++;
        }
        
        
        public void cambiarArea(String areaTrabajo){
            this.areaTrabajo = areaTrabajo;
        }
        
        public String devuelveDatos(){
            return "El nombre del empleado es: "+nombre+" y el area de trabajo es: "+areaTrabajo+
                    ". ID: "+id;
        }
        
        public void cambiaArea(String areaTrabajo){
            this.areaTrabajo = areaTrabajo;
        }

        /*public void cambiaNombre(String nombre){
            this.nombre = nombre;
        }*/
        
        public static String darIdSiguiente(){
            return "EL id siguiente es: " + idSiguiente;
        }
        
        private String nombre;
        private String areaTrabajo;
        private int id;
        private static int idSiguiente = 1;

        
    }

