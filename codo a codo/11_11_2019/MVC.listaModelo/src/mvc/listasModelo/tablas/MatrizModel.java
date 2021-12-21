package mvc.listasModelo.tablas;
import javax.swing.event.TableColumnModelListener;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

public class MatrizModel implements TableModel{
    private Object[][] datos;
    
    public MatrizModel(Object[][] datos){
        this.datos = datos;
    }

    @Override
    public int getRowCount() {
        return datos.length -1;
    }

    @Override
    public int getColumnCount() {
        return datos[0].length;
    }

    @Override
    public String getColumnName(int i) {
        return datos[0][i].toString();
    }

    @Override
    public Class<?> getColumnClass(int i) {
    }

    @Override
    public boolean isCellEditable(int i, int i1) {
        return false;
    }

    @Override
    public Object getValueAt(int fi, int ci) {
        return datos[fi+1][ci];
    }

    @Override
    public void setValueAt(Object o, int i, int i1) {
        
    }

    @Override
    public void addTableModelListener(TableModelListener tl) {
    }

    @Override
    public void removeTableModelListener(TableModelListener tl) {
    }
    
    
}
