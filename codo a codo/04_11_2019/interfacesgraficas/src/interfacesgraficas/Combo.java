/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfacesgraficas;


import java.awt.event.*;
import javax.swing.*;

/**
 *
 * @author Navegador
 */
public class Combo extends JFrame implements ActionListener,ItemListener{
    private JComboBox combo;
    private JButton b1;
    
    
    
    
    @Override
    public void actionPerformed(ActionEvent e) {
       if(e.getSource()==b1)
            System.exit(0);
    }
    @Override
    public void imtemStateChanged(ItemEvent e){
        if(e.getSource == combo){
            String selec = (String)combo.getSelectedItem();
            setTitle(select);
            
        }
    }
    
    public Combo(){
        setLayout(null);
        b1 = new JButton("Salir");
        b1.setBounds(10, 80, 100, 30);
        add(b1);
        b1.addActionListener(this);
        
        combo = new JComboBox();
        combo.setBounds(10,10,80,20);
        add(combo);
        combo.addItem("Talleres");
        combo.addItem("Boca");
        combo.addItem("River");
        combo.addItem("Platense");
        combo.addItem("Lanus");
        combo.addActionListener(this);
    }
    
    public static void main(String[] args) {
        Combo form = new Combo();
        form.setBounds(10, 10, 1200, 800);
        form.setVisible(true);
    }
    
}
