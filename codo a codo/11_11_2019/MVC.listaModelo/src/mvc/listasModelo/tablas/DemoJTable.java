package mvc.listasModelo.tablas;
import java.awt.*;
import javax.swing.*;

public class DemoJTable extends JFrame {
    public DemoJTable(){
        super("DemoJList");
        Container cont = getContentPane();
        cont.setLayout(new BorderLayout());
        Object[][] datos = obtenerMatrizDatos();
        JTable tabla = new JTable(new MatrizModel(datos));
        JScrollPane scrollLista = new JScrollPane(tabla);
        cont.add(scrollLista, BorderLayout.CENTER);
        setSize(300, 300);
        setVisible(true);
    }
    
    private Object [][] obtenerMatrizDatos(){
        Object [][] mat = {
            {"Columna 0","Columna 1","Columna 2","Columna 3"},
            {"Rojo","Verde","Azul","Violeta"},
            {"Rosa","Amarillo","Naranja","Negro"},
            {"Blanco","Celeste","Gris","Turquesa"},
            {"Lila","Marron","Crema","Azul francia"}
        };
    }
}
