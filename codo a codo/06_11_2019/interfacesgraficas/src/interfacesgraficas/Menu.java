
package interfacesgraficas;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Menu extends JFrame implements ActionListener{
    private JButton b1;
    private JMenu menu1;
    private JMenuBar mb;
    private JMenuItem mi1, mi2, mi3;
    
    public Menu(){
        setLayout(null);
        mb = new JMenuBar();
        setJMenuBar(mb);
        menu1 = new JMenu("Opciones");
        mb.add(menu1);
        mi1 = new JMenuItem("Rojo");
        mi1.addActionListener(this);
        menu1.add(mi1);
        mi2 = new JMenuItem("Verde");
        mi2.addActionListener(this);
        menu1.add(mi2);
        mi3 = new JMenuItem("Azul");
        mi3.addActionListener(this);
        menu1.add(mi3);
        b1 = new JButton("Cerrar");
        b1.setBounds(10, 130, 100, 30);
        add(b1);
        b1.addActionListener(this);
        
        
        
    }

    
    public static void main(String[] args) {
        Menu form = new Menu();
        form.setBounds(10, 10, 600, 400);
        form.setVisible(true);
    }
    
    @Override
    public void actionPerformed(ActionEvent ae) {
        if(ae.getSource()==b1){
            System.exit(0);
        }
        Container c = this.getContentPane();
        if(ae.getSource()==mi1){
            c.setBackground(new Color(255,0,0));
        }
        if(ae.getSource()==mi2){
            c.setBackground(new Color(0,255,0));
        }
        if(ae.getSource()==mi3){
            c.setBackground(new Color(0,0,255));
        }
        
    }
    
}
