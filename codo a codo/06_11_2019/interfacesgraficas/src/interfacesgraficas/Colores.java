
package interfacesgraficas;
import javax.swing.*;
import java.awt.event.*;
import java.awt.*;

public class Colores extends JFrame implements ActionListener{
    
    private JLabel l1, l2, l3;
    private JComboBox combo1, combo2, combo3;
    private JButton b1, b2;
    int i;
    
    public Colores(){
        setLayout(null);
        l1 = new JLabel("Red");
        l1.setBounds(10, 10, 100, 30);
        add(l1);
        
        combo1 = new JComboBox();
        combo1.setBounds(120, 10, 50, 30);
        for(i=0; i<=255; i++){
            combo1.addItem(String.valueOf(i));
        }
        add(combo1);
        
        l2 = new JLabel("Green");
        l2.setBounds(10, 50, 120, 30);
        add(l2);
        
        combo2 = new JComboBox();
        combo2.setBounds(120, 50, 50, 30);
        for(i=0; i<=255; i++){
            combo2.addItem(String.valueOf(i));
        }
        add(combo2);
        
        l3 = new JLabel("Blue");
        l3.setBounds(10, 90, 140, 30);
        add(l3);
        
        combo3 = new JComboBox();
        combo3.setBounds(120, 90, 50, 30);
        for(i=0; i<=255; i++){
            combo3.addItem(String.valueOf(i));
        }
        add(combo3);
        
        b1 = new JButton("Fijar colores");
        b1.setBounds(10, 130, 100, 30);
        add(b1);
        b1.addActionListener(this);
        
        b2 = new JButton("Cerrar");
        b2.setBounds(10, 180, 100, 30);
        add(b2);
        b2.addActionListener(this);
}

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==b2){
            System.exit(0);
        }
        if(e.getSource()==b1){
            String cad1 = (String)combo1.getSelectedItem();
            String cad2 = (String)combo2.getSelectedItem();
            String cad3 = (String)combo3.getSelectedItem();
            int red = Integer.parseInt(cad1);
            int green = Integer.parseInt(cad2);
            int blue = Integer.parseInt(cad3);
            Color color1 = new Color(red,green,blue);
            b1.setBackground(color1);
    }
        
        
        
    }
    

    public static void main(String[] args) {
        Colores form = new Colores();
        form.setBounds(10, 10, 600, 400);
        form.setVisible(true);
    }
    
}
