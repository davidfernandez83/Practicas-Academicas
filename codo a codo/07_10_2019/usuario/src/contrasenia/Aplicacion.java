
package contrasenia;
import java.util.HashSet;
import java.util.ResourceBundle;


public class Aplicacion {
    public Usuario login(String userName, String password){
        try{
            ResourceBundle rb = ResourceBundle.getBundle("usuario");
            String usr = rb.getString("userName"); //valor para usuario
            String pwd = rb.getString("password"); //valor para password
            //variable de retorno
            Usuario u = null;
            //buscamos las concidencias
            if(usr.equals(userName) && pwd.equals(password)){
                u = new Usuario();
                u.setUserName(usr);
                u.setPassword(pwd);
                //u.setNombre(rb.getString("nombre"));
                //u.setEmail(rb.getString("email"));

            }
            return u; 
        }catch(Exception e){
            throw new RuntimeException("Error de verifivavion de datos", e);
        }
        
        
        
    }
    

}
