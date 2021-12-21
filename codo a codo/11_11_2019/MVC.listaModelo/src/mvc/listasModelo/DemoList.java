package mvc.listasModelo;
import java.awt.*;
import java.util.Vector;
import javax.swing.*;

public class DemoList extends JFrame{
    
    public DemoList(){
        super("Demo JList");
        Container cont = getContentPane();
        //System.out.println(cont.toString());
        cont.setLayout(new BorderLayout());
        
        Vector<Object> datos = obtenerVectorDatos();
        
        JList lista = new JList(new VectorModelo(datos));
        JScrollPane scrollLista = new JScrollPane(lista);
        cont.add(scrollLista, BorderLayout.CENTER);
        setSize(300,300);
        setVisible(true);
    }
    private Vector<Object> obtenerVectorDatos(){
        Vector<Object> v = new Vector<Object>();
        v.add("La Renga");
        v.add("La bersuit");
        v.add("Almafuerte");
        v.add("Rata Blanca");
        v.add("Divididos");
        v.add("Los redondos");
        return v;
    }
    
    public static void main(String[] args) {
        new DemoList();
    }

}
