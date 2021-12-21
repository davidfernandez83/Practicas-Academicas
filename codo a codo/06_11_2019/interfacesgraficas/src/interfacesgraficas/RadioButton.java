
package interfacesgraficas;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javax.swing.*;

public class RadioButton extends JFrame implements ChangeListener, ActionListener{
    private JButton b1;
    private JRadioButton r1, r2 ,r3;
    private ButtonGroup bg;
    
    public static void main(String[] args) {
        RadioButton form = new RadioButton();
        form.setBounds(10, 10, 600, 400);
        form.setVisible(true);
    }

    public RadioButton(){
        setLayout(null);
        b1 = new JButton("Cerrar");
        b1.setBounds(10, 160, 100, 30);
        add(b1);
        b1.addActionListener(this);
        
        bg = new ButtonGroup();

        r1 = new JRadioButton("640x480");
        r1.setBounds(10, 20, 100, 30);
        r1.addActionListener(this);
        add(r1);
        bg.add(r1);
        r2 = new JRadioButton("800x600");
        r2.setBounds(10, 70, 100, 30);
        r2.addActionListener(this);
        add(r2);
        bg.add(r2);
        r3 = new JRadioButton("1024x768");
        r3.setBounds(10, 120, 100, 30);
        r3.addActionListener(this);
        add(r3);
        bg.add(r3);
        
    }


    @Override
    public void actionPerformed(ActionEvent ae) {
        if(ae.getSource()==b1){
            System.exit(0);
        }
    }

    @Override
    public void changed(ObservableValue observable, Object oldValue, Object newValue) {
        if(r1.isSelected()){
            setSize(640,480);
        }
        if(r1.isSelected()){
            setSize(800,600);
        }
        if(r1.isSelected()){
            setSize(1024,768);
        }
        
    }
}
