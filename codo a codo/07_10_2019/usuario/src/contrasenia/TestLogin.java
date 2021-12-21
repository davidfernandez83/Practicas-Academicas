
package contrasenia;

public class TestLogin {
    public static void main(String[] args) {
        try{
            Aplicacion app = new Aplicacion();
            Usuario u = app.login("Juan", "juan123cito");
            System.out.println(u);
        }catch(Exception e){
            System.out.println("Servicio temporalmente interrumpido: ");
            System.out.println(e.getMessage());
        }
    }
    
}
