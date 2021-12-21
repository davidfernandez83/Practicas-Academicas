/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conectabbdd2;
import java.awt.EventQueue;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/*
Bajas y Modificaciones
*/
public class Formulario extends JFrame{
        private JPanel contentPane;
    private JTextField tf1;
    private JTextField tf2;
    private JLabel labelResultado;
    private JButton btnConsultaPorCodigo;
    private JTextField tf3;
    
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    Formulario frame = new Formulario();
                    frame.setVisible(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
    /**
     * Create the frame.
     */
    public Formulario() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 606, 405);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        setContentPane(contentPane);
        contentPane.setLayout(null);
        
        JLabel lblDescripcionDelArticulo = new JLabel("Descripción del artículo:");
        lblDescripcionDelArticulo.setBounds(23, 38, 193, 14);
        contentPane.add(lblDescripcionDelArticulo);
        
        tf1 = new JTextField();
        tf1.setBounds(247, 35, 193, 20);
        contentPane.add(tf1);
        tf1.setColumns(10);
        
        JLabel lblPrecio = new JLabel("Precio:");
        lblPrecio.setBounds(23, 74, 95, 14);
        contentPane.add(lblPrecio);
        
        tf2 = new JTextField();
        tf2.setBounds(247, 71, 107, 20);
        contentPane.add(tf2);
        tf2.setColumns(10);
        
        labelResultado = new JLabel("resultado");
        labelResultado.setBounds(361, 122, 229, 14);
        contentPane.add(labelResultado);
        
        btnConsultaPorCodigo = new JButton("Consulta por código");
        btnConsultaPorCodigo.addActionListener(new ActionListener() {
                        @Override
    public void actionPerformed(ActionEvent arg0) {
                labelResultado.setText("");
                tf1.setText("");
                tf2.setText("");              
                try {
                    Connection conexion=DriverManager.getConnection("jdbc:mysql://localhost/bd1","root" ,"");
                    Statement comando=conexion.createStatement();
        ResultSet registro = comando.executeQuery("select descripcion,precio from articulos where codigo="+tf3.getText());
                    if (registro.next()==true) {
                        tf1.setText(registro.getString("descripcion"));
                        tf2.setText(registro.getString("precio"));
                    } else {
            labelResultado.setText("No existe un artículo con dicho código");
                    }
                    conexion.close();
                } catch(SQLException ex){
                    setTitle(ex.toString());
                }
            }
        });
        btnConsultaPorCodigo.setBounds(25, 122, 177, 23);
        contentPane.add(btnConsultaPorCodigo);
        
        tf3 = new JTextField();
        tf3.setBounds(247, 123, 86, 20);
        contentPane.add(tf3);
        tf3.setColumns(10);
        
        JButton btnNewButton = new JButton("Borrar");
        btnNewButton.addActionListener(new ActionListener() {
                        @Override
            public void actionPerformed(ActionEvent arg0) {
                labelResultado.setText("");
                try {
    Connection conexion=DriverManager.getConnection("jdbc:mysql://localhost/bd1","root" ,"");
        Statement comando=conexion.createStatement();
    int cantidad = comando.executeUpdate("delete from articulos where codigo="+tf3.getText());
                    if (cantidad==1) {
                        tf1.setText("");
                        tf2.setText("");              
        labelResultado.setText("el artículo fue eliminado...");
                    } else {
        labelResultado.setText("No existe un artículo con dicho código");
                    }
                    conexion.close();
                } catch(SQLException ex){
                    setTitle(ex.toString());
                }               
            }
        });
        btnNewButton.setBounds(24, 156, 177, 23);
        contentPane.add(btnNewButton);
        
        JButton btnNewButton_1 = new JButton("Modificar");
        btnNewButton_1.addActionListener(new ActionListener() {
                        @Override
            public void actionPerformed(ActionEvent e) {
                labelResultado.setText("");
                try {
                Connection conexion=DriverManager.getConnection("jdbc:mysql://localhost/bd1","root" ,"");
                    Statement comando=conexion.createStatement();
        int cantidad = comando.executeUpdate("update articulos set descripcion='" + tf1.getText() + "'," + "precio=" + tf2.getText() + " where codigo="+tf3.getText());
            if (cantidad==1) {
labelResultado.setText("Se modificó la descripción y el precio del artículo con dicho código");
                } else {
            labelResultado.setText("No existe un artículo con dicho código");
                    }
            conexion.close();
                } catch(SQLException ex){
                    setTitle(ex.toString());
                }                               
            }
        });
        btnNewButton_1.setBounds(21, 190, 179, 23);
        contentPane.add(btnNewButton_1);
        cargarDriver();
    }
    
    private void cargarDriver() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        }catch(ClassNotFoundException ex) {
            setTitle(ex.toString());
        }
    }
    }
