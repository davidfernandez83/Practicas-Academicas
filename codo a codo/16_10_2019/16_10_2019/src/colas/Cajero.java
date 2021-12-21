//Llegan clientes al cajero cada 2 ó 3 minutos
// C/cliente tarda entre 2 y 4 ' en ser atendido.
// Obtener la información:
// 1.CAnt de clientes que se atienden en 1o hs
// 2. Cant. de clientes que hay en cola después de 10 hs.
// 3. Hora de llegada del primer cliente que no es atendido luego de 10 hs.

package colas;
import javax.swing.*;
import java.awt.event.*;
import java.util.LinkedList;
import java.util.Queue;

public class Cajero extends JFrame implements ActionListener{
    private JLabel l1, l2, l3;
    private JButton boton1;
    
    public Cajero(){
        setLayout(null);
        boton1 = new JButton("Activar simulación");
        boton1.setBounds(10, 10, 180, 30);
        add(boton1);
        boton1.addActionListener(this);
        l1 = new JLabel("Atendidos");
        l1.setBounds(10, 50, 300, 30);
        add(l1);
        l2 = new JLabel("En cola: ");
        l2.setBounds(10, 90, 300, 30);
        add(l2);
        l3 = new JLabel("Minuto de llegada");
        l3.setBounds(10, 130, 400, 30);
        add(l3);        
    }
    @Override
    public void actionPerformed(ActionEvent e){
        if(e.getSource() == boton1){
            simulacion();
        }
    }
    public void simulacion(){
        int estado = 0;
        int llegada = 2 + (int)(Math.random()*2);
        int salida = -1;
        int cantAtendidas = 0;
         Queue<Integer> cola = new LinkedList<Integer>();
         for(int minuto=0; minuto<600;minuto++){
             if(llegada==minuto){
                 if(estado == 0){
                     estado = 1;
                     salida = minuto + 2 + (int)(Math.random()*3);
                 }else{
                     cola.add(minuto);
                 }
                 llegada = minuto + 2 + (int)(Math.random()*2);
             }
             if(salida == minuto){
                 estado =0;
                 cantAtendidas++;
                 if(!cola.isEmpty()){
                     cola.poll();
                     estado = 1;
                     salida = minuto + 2 + (int)(Math.random()*3);
                 }
             }
         }
         l1.setText("Atendidos: " + String.valueOf(cantAtendidas));
         l2.setText("En cola: " + String.valueOf(cola.size()));
         if(!cola.isEmpty())
             l3.setText("Minuto llegada: " +String.valueOf(cola.peek()));
    }
    public static void main(String[] args) {
        Cajero cajero = new Cajero();
        cajero.setBounds(0, 0, 340, 250);
        cajero.setDefaultCloseOperation(EXIT_ON_CLOSE);
        cajero.setVisible(true);
    }
}