package interfacesgraficas;
import javax.swing.*;
import java.awt.event.*;

public class Calcu extends JFrame implements ActionListener{
    private JTextField tf1, tf2;
    private JButton b1, b2;
    
public Calcu(){
    setLayout(null);
    tf1 = new JTextField();
    tf1.setBounds(10, 10, 100, 30);
    add(tf1);
    tf2 = new JTextField();
    tf2.setBounds(10, 50, 100, 30);
    add(tf2);
    b1 = new JButton("Sumar");
    b1.setBounds(10, 90, 100, 30);
    add(b1);
    b1.addActionListener(this);
    b2 = new JButton("Cerrar");
    b2.setBounds(10, 180, 100, 30);
    add(b2);
    b2.addActionListener(this);
}    
    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==b1){
           String cadena1 = tf1.getText();
           String cadena2 = tf2.getText();
           int x1 = Integer.parseInt(cadena1);
           int x2 = Integer.parseInt(cadena2);
           int suma = x1 + x2;
           String total = String.valueOf(suma);
            setTitle(total);
        }
        if(e.getSource()==b2){
            System.exit(0);
        }
    }
    
    public static void main(String[] args) {
        Calcu form = new Calcu();
        form.setBounds(10, 10, 600, 400);
        form.setVisible(true);
    }
}
