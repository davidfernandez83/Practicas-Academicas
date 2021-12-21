package interfacesgraficas;
import javax.swing.*;
import java.awt.event.*;
public class InterfacesGraficas extends JFrame implements ActionListener{
private JLabel label1;
private JButton b1;
    public InterfacesGraficas(){
        setLayout(null);
        label1 = new JLabel("Hola Java Swing");
        label1.setBounds(40, 10, 200, 30);
        add(label1);
        b1 = new JButton("Exit");
        b1.setBounds(300, 250, 100, 30);
        add(b1);
        b1.addActionListener(this);
        }
     @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==b1){
            System.exit(0);
        }
    }
    
    public static void main(String[] args) {
        InterfacesGraficas form = new InterfacesGraficas();
        form.setBounds(10, 10, 600, 400);
        form.setVisible(true);
    }
   
}