package conectarbbdd;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.*;
import javax.swing.border.EmptyBorder;
import java.lang.ClassNotFoundException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConectarBBDD extends JFrame{

    private JPanel panel;
    private JTextField txt1, txt2;
    private JLabel lblResultado,ingreseCodigoDe;
    private JButton btnConsultaPorCodigo,btnAlta;
    
    
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                try{
                    ConectarBBDD frame = new ConectarBBDD();
                    frame.setVisible(true);
                }catch(Exception e){
                    e.printStackTrace();
                }
            }
        });
        
    }
    
    public ConectarBBDD(){
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100,100,650,450);
        panel.setBorder(new EmptyBorder(5,5,5,5));
        setContentPane(panel);
        panel.setLayout(null);
        
        JLabel descripcionDelArticulo = new JLabel("Descripcion del articulo");
        descripcionDelArticulo.setBounds(23,38,193,14);
        panel.add(descripcionDelArticulo);
        
        
        txt1=new JTextField();
        txt1.setBounds(247,35,193,20);
        panel.add(txt1);
        txt1.setColumns(10);
        txt2=new JTextField();
        txt2.setBounds(247,71,107,20);
        panel.add(txt2);
        txt2.setColumns(10);        
        
        
        JLabel lblPrecio = new JLabel("Alta");
        lblPrecio.setBounds(23,74,95,14);
        panel.add(lblPrecio);
        
        JButton btnAlta = new JButton();
        btnAlta.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent ae) {
                lblResultado.setText("");
            
                try {
                    Connection conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bd1","root","");
                    Statement comando = (Statement) conexion.createStatement();
                    comando.executeUpdate("INSERT INTO articulos (descripcion,precio) VALUES('"+txt1.getText()+"',"+txt2.getText()+")");
                    conexion.close();
                    lblResultado.setText("Se registraron los datos");
                    txt1.setText("");
                    txt2.setText("");
                }
                catch(SQLException e){
                    setTitle(e.toString());
                    e.printStackTrace();

                }
            }
        });
        
        btnAlta.setBounds(247,110,69,23);
        panel.add(btnAlta);
        
        lblResultado = new JLabel("resultado");
        lblResultado.setBounds(361,122,229,14);
        
        btnConsultaPorCodigo.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent ae) {
                lblResultado.setText("");
                txt1.setText("");
                txt2.setText("");
                
                
                
                Connection conexion;
                try {
                    conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bd1","root","");
                    Statement comando = (Statement) conexion.createStatement();
                    ResultSet registro = comando.executeQuery("SELECT descripcion,precio FROM articulos WHERE codigo="+txt3.getText());
                    if(registro.next()==true){
                        
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(ConectarBBDD.class.getName()).log(Level.SEVERE, null, ex);
                }

            
                
            }
            
        });
        
        
        
        
    }
    
}
