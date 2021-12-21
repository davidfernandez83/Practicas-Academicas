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
public class AreaDeTexto extends JFrame implements ActionListener {
    private JTextField tf1;
    private JLabel l1;
    private JTextArea ta1;
    private JScrollPane scroll;
    private JButton b1;

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==b1)
            System.exit(0);
    }
    
    public AreaDeTexto(){
        setLayout(null);
        b1 = new JButton("Salir");
        b1.setBounds(10, 80, 100, 30);
        add(b1);
        b1.addActionListener(this);
        
        tf1 = new JTextField();
        tf1.setBounds(120, 10, 150, 20);
        add(tf1);
        tf1.addActionListener(this);
        
        ta1 = new JTextArea();
        ta1.setBounds(400, 200, 150, 20);
        add(ta1);
        
        scroll = new JScrollPane();
        scroll.setBounds(10,50,400,300);
    }
    
    public static void main(String[] args) {
        AreaDeTexto area = new AreaDeTexto();
        area.setBounds(10, 10, 1200, 800);
        area.setVisible(true);
    }
    
    
}
