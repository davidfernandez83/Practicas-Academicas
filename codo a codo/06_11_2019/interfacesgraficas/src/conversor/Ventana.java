
package conversor;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

public class Ventana extends JFrame{
    
    
    
    public Ventana(){
        JPanel arriba = new JPanel();
        arriba.setLayout(new FlowLayout());        
        JPanel abajo = new JPanel();
        abajo.setLayout(new FlowLayout());
        JTextField txt1 = new JTextField(200);
        JTextField txt2 = new JTextField(200);
        
        txt1.addKeyListener(new KeyListener() {
            @Override
            public void keyTyped(KeyEvent ke) {
            }

            @Override
            public void keyPressed(KeyEvent ke) {
            }

            @Override
            public void keyReleased(KeyEvent ke) {
            }
        });
        txt1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent ae) {
                System.out.println("Text: " + txt1.getText());
            }
        });
        
        txt2.addKeyListener(new KeyListener() {
            @Override
            public void keyTyped(KeyEvent ke) {
            }

            @Override
            public void keyPressed(KeyEvent ke) {
            }

            @Override
            public void keyReleased(KeyEvent ke) {
            }
        });        
        txt2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent ae) {
                System.out.println("Text: " + txt2.getText());
            }
        });
        
        //aca hacemos las conversiones
        String [] medidas = {"metros","centimetros","milimetros"};
        JComboBox<String> medidasIn = new JComboBox<String>(medidas);
        medidasIn.setSelectedIndex(2); //opcion por defecto
        JComboBox<String> medidasOut = new JComboBox<String>(medidas);
        medidasOut.setSelectedIndex(2);
        
        arriba.add(txt1);
        arriba.add(medidasIn);
        arriba.add(txt2);
        arriba.add(medidasOut);
        
        JButton conv = new JButton("Convertir");
        this.add(conv, BorderLayout.CENTER);
        conv.addMouseListener(new MouseListener(){
        @Override
        public void mouseClicked(MouseEvent me) {
            String x = (String)medidasIn.getSelectedItem();
            String y = (String)medidasOut.getSelectedItem();
            float num = Float.parseFloat(txt1.getText());
            if(x=="metros"){
                switch(y){
                    case "metros": txt2.setText(Float.toString(num));
                    break;
                    case "centimetros": txt2.setText(Float.toString(num*100));
                    break;
                    case "milimetros": txt2.setText(Float.toString(num*1000));
                    break;
                }
            }
            if(x=="centimetros"){
                switch(y){
                    case "metros": txt2.setText(Float.toString(num/100));
                    break;
                    case "centimetros": txt2.setText(Float.toString(num));
                    break;
                    case "milimetros": txt2.setText(Float.toString(num*10));
                    break;
                }
            }
            if(x=="milimetros"){
                switch(y){
                    case "metros": txt2.setText(Float.toString(num*1000));
                    break;
                    case "centimetros": txt2.setText(Float.toString(num/10));
                    break;
                    case "milimetros": txt2.setText(Float.toString(num));
                    break;
                }
            }
            }

            @Override
            public void mousePressed(MouseEvent me) {
            }

            @Override
            public void mouseReleased(MouseEvent me) {
            }

            @Override
            public void mouseEntered(MouseEvent me) {
            }

            @Override
            public void mouseExited(MouseEvent me) {
            }
            
        });
        
        //this.add(arriba,)
        
        
        
        
    }
    
    
    

    
}
