
package interfacesgraficas;
import java.awt.*;
import java.awt.event.*;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javax.swing.*;

public class CasillasVer extends JFrame implements ChangeListener, ActionListener{
    
    private JButton b1;
    private JCheckBox check1, check2, check3;
    
    public CasillasVer(){
        setLayout(null);
        check1 = new JCheckBox("Ingles");
        check1.setBounds(10, 10, 150, 30);
        check1.addChangeListener((javax.swing.event.ChangeListener) this);
        add(check1);
        check2 = new JCheckBox("Ingles");
        check2.setBounds(10, 10, 150, 30);
        check2.addChangeListener((javax.swing.event.ChangeListener) this);
        add(check2);
        check3 = new JCheckBox("Ingles");
        check3.setBounds(10, 10, 150, 30);
        check3.addChangeListener((javax.swing.event.ChangeListener) this);
        add(check3);
        b1 = new JButton("Cerrar");
        b1.setBounds(10, 130, 100, 30);
        add(b1);
        b1.addActionListener(this);
    }
    
    
    

    @Override
    public void actionPerformed(ActionEvent ae) {
        if(ae.getSource()==b1){
            System.exit(0);
        }
    }

    @Override
    public void changed(ObservableValue observable, Object oldValue, Object newValue) {
        String cad = "";
        if(check1.isSelected()==true){
            cad = cad + "Ingles";
        }
        if(check2.isSelected()==true){
            cad = cad + "Frances";
        }
        if(check3.isSelected()==true){
            cad = cad + "Aleman";
        }
        setTitle(cad);
    }
    
    public static void main(String[] args) {
        CasillasVer form = new CasillasVer();
        form.setBounds(10, 10, 600, 400);
        form.setVisible(true);
    }
    

    
}
