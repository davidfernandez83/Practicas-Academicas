
package modelo.conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Conexion {
    static String bd="basecita";
    static String login="root";
    static String password="";
    static String url="jdbc:mysql://localhost/"+bd;
    
    Connection conn = null;
    
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,login,password);
            if(conn!=null){
                System.out.println("Conexion a la bbdd "+bd+" OK");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
    
    public Connection getConnection(){
        return conn;
    }
    public void desconectar(){
        conn = null;
    }
}
