
package generapass;
import javax.swing.JOptionPane;

public class GeneraPass {

    public static void main(String[] args) {
        String texto = JOptionPane.showInputDialog("Ingrese el tamaño del array");
        int tamaño = Integer.parseInt(texto);
        
        texto = JOptionPane.showInputDialog("Ingrese la longitud del password");
        int longitud = Integer.parseInt(texto);
        
        Password listaPassword[] = new Password(tamaño);
        boolean fortalezaPassword[] = new boolean(tamaño);
        
        for(int i = 0; i<listaPassword.lenght; i++){
            listaPassword[i] = new Password(longitud);
            fortalezaPassword[i] = ListaPassword.esFuerte();
            
            System.out.println(listaPassword[i].getContraseña()+" "+fortalezaPassword[i]);
        }
        
        
        
    }
    
}
