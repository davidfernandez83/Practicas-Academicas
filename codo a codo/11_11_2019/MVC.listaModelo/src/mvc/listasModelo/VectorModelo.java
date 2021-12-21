package mvc.listasModelo;
import java.util.Vector;
import javax.swing.ListModel;
import javax.swing.event.ListDataListener;


public class VectorModelo implements ListModel{
    
    private Vector<Object> datos;
    
    public VectorModelo(Vector<Object> datos){
        this.datos = datos;
    }
    
    
    
    
    @Override
    public int getSize() {
        return datos.size();
    }

    @Override
    public Object getElementAt(int i) {
        return datos.get(i);
    }

    @Override
    public void addListDataListener(ListDataListener ll) {
    }

    @Override
    public void removeListDataListener(ListDataListener ll) {
    }
    
}
