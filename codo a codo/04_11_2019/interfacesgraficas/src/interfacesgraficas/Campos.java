/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfacesgraficas;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.*;

/**
 *
 * @author Navegador
 */
public class Campos extends JFrame implements ActionListener{
    private JTextField tf1;
    private JLabel l1;
    private JButton b1;
    private JButton b2;

    @Override
    public void actionPerformed(ActionEvent e) {
      if(e.getSource()==b2)
          System.exit(0);
      if(e.getSource()==b1){
          String cadena = tf1.getText();
          setTitle(cadena);
      }
    }
    
    public Campos(){
        setLayout(null);
        l1 = new JLabel("Hola Java Swing");
        l1.setBounds(10, 10, 100, 30);
        add(l1);
        
        b1 = new JButton("Aceptar");
        b1.setBounds(10, 80, 100, 30);
        add(b1);
        b1.addActionListener(this);
        
        b2 = new JButton("Exit");
        b2.setBounds(300, 250, 100, 30);
        add(b2);
        b2.addActionListener(this);
        
        tf1 = new JTextField();
        tf1.setBounds(120, 10, 150, 20);
        add(tf1);
        tf1.addActionListener(this);
    }
    
    public static void main(String[] args) {
        Campos form = new Campos();
        form.setBounds(10, 10, 600, 400);
        form.setVisible(true);
    }
    
}
